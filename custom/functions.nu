# List all the IP addresses of the machine
export def ip-list []: nothing -> table<ver: string, interface_addr: string> {
  ip a
  | split row (char newline)
  | each { str trim }
  | where ($it | str starts-with "inet")
  | split column --collapse-empty --regex '\s+' ver interface_addr
}

# Attach zellij if the session is SSH
export def ssh-attach-zellij [] {
  if ("ZELLIJ" in $env) {
    # Don't nest zellij sessions
    return
  }

  # Don't attach zellij in vscode integrated terminal
  let blacklisted_binaries = ["code", "code-insiders"]
  for binary in $blacklisted_binaries {
    if ((which $binary | length) > 0) {
      return
    }
  }

  # If env does not have "SSH_CONNECTION", don't attach zellij
  if ($env.SSH_CLIENT? | is-empty) {
    return
  }

  # If ssh client is localhost, don't attach zellij
  let ssh_client = ($env.SSH_CLIENT | split column --collapse-empty --regex
'\s+' src_ip src_port dst_port | first)
  let src_ip = $ssh_client.src_ip
  let localhost_ips = ["::1", "localhost", "127.0.0.1"]
  if ($src_ip in $localhost_ips) {
    print "SSH-ing from localhost, not attaching zellij"
    return
  }
  if ((which ip | length) > 0) {
    let ip_addresses = (
      ip-list
      | reduce -f [] {|it, acc| $acc | append ($it.interface_addr | split row "/" | first)}
    )
    if ($src_ip in $ip_addresses) {
      print "SSH-ing from Local IP address, not attaching zellij"
      return
    }
  }

  # If env has "ZELLIJ_SSH_PANE_NAME", use that name to attach zellij
  zellij attach -c ($env.ZELLIJ_SSH_PANE_NAME? | default "ssh_zellij")
}

# Get the remote web URL of the git repository
export def gurl [
  url?: string
  --remote(-r): string
] {
  mut url = $url
  mut remote = $remote
  if ($remote | is-empty) {
    $remote = (git remote | lines | first | str trim -c "\n")
  }
  if ($url | is-empty) {
    $url = (git remote get-url $remote | str trim -c "\n")
  }
  if ($url | str ends-with ".git") {
    $url = ($url | str substring 0..-4)
  }
  $url = ($url | str replace -r "(.com):(v[0-9]+/)?" "$1/")
  for pattern in ["git@ssh.", "git@"] {
    if ($url | str starts-with $pattern) {
      $url = "https://" + ($url | str substring ($pattern | str length)..)
    }
  }
  $url
}

# Clone a git repository into the Code directory and cd into it
export def gcl [url: string] {
  mut path = (gurl $url | str replace -r "https?://" "")
  $path = ($env.HOME | path join "Code" $path)
  git clone $url $path
  cd $path
}

export def --env mkcd [directory: path] {
  mkdir $directory
  cd $directory
}

export def gco [$branch: string] {
  git checkout $branch
}

export def git_current_branch () {
  git branch --show-current | str trim -c "\n"
}

# Add, commit and push changes to the current branch. If --force is provided, force push the changes.
export def ggpush [
  message: string
  --force(-f)
] {
  git add .
  git commit -m $message
  git push origin (git_current_branch) ...(if $force {[-f]} else {[]})
  gurl
}

export def ggpull () {
  git pull origin (git_current_branch)
}

export def get_govc_entry_curry (
  vcenter_envlist: table<
    VC_ENV: string,
    GOVC_URL: string,
    GOVC_USERNAME: string,
  GOVC_PASSWORD: string>) {
  return { |vc_env: string| 
    let record = $vcenter_envlist | where VC_ENV == $vc_env
    if (($record | length) != 1) {
      print $"Expected 1 record, found ($record | length)"
      return
    }
    $record | first | merge { GOVC_INSECURE: "true" }
  }
}
