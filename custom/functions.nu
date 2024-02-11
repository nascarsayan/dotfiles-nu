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

export def --env gcl [$url: string] {
  mut $path = $url
  if ($path | str ends-with ".git") {
    $path = ($path | str substring 0..-4)
  }
  $path = ($path | str replace -r "(.com):(v[0-9]+/)?" "$1/")
  for pattern in ["https://", "http://", "git@ssh.", "git@"] {
    if ($path | str starts-with $pattern) {
      $path = ($path | str substring ($pattern | str length)..)
    }
  }
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

export def ggpush [
  message: string
  --force(-f)
] {
  git add .
  git commit -m $message
  git push origin (git_current_branch) ...(if $force {[-f]} else {[]})
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
