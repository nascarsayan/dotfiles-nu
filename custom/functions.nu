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
  if ($url | is-empty) {
    mut remote = $remote
    if ($remote | is-empty) {
      $remote = (git remote | lines | first | str trim -c "\n")
    }
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

export alias gco = git checkout

export def git-current-branch () {
  git branch --show-current | str trim -c "\n"
}

# Add and commit changes to the current branch
export def gcam [
  message: string
] {
  git add --all
  git commit -m $message
}

# Checkout master or main branch
export alias gcm = try {
  git checkout master
} catch {
  git checkout main
}

# Add, commit and push changes to the current branch. If --force is provided, force push the changes.
export def ggpush [
  message: string
  remote?: string
  --force(-f)
] {
  try {
    gcam $message
  } catch {
    print "No changes to commit, pushing current branch"
  }
  mut remote = $remote
  if ($remote | is-empty) {
    $remote = (git remote | lines | first | str trim -c "\n")
  }
  git push $remote (git-current-branch) ...(if $force {[-f]} else {[]})
  gurl
}

# Git pull current branch from origin
export def ggpull () {
  git pull origin (git-current-branch)
}

export def get_govc_entry_curry (
  vcenter_envlist: table<
    VC_ENV: string,
    GOVC_URL: string,
    GOVC_USERNAME: string,
    GOVC_PASSWORD: string
  >) {
  return { |vc_env: string| 
    let record = $vcenter_envlist | where VC_ENV == $vc_env
    if (($record | length) != 1) {
      print $"Expected 1 record, found ($record | length)"
      return
    }
    $record | first | merge { GOVC_INSECURE: "true" }
  }
}

export def record-to-args (rec: record) {
  $rec
  | reject n 
  | transpose key val
  | reduce -f [] {|it, acc| ($acc | append [$"--($it.key)", $it.val] ) }
}

export def login-az (
  az_spn: record<n: string, tenant: string, user: string, password: string>
) {
  az login --service-principal ...(record-to-args $az_spn) | save -f /dev/null
  print $"Logged in using SPN ($az_spn.n)"
}

export def upload-to-blob [
  blob: record<n: string, account-name: string, container-name: string, account-key: string>
  file: path
  --name(-n): string
] {
  mut name = $name
  if ($name | is-empty) {
    $name = (basename $file)
  }
  az storage blob upload --overwrite -f $file -n $name ...(record-to-args $blob)
  let url = $"https://($blob.account-name).blob.core.windows.net/($blob.container-name)/($name)"
  use std log
  log info $"Uploaded ($file) to(char newline)(char newline)($url)"
}

export def c [path: path] {
  # if code is not in path, use code-insiders
  if ((which code | length) > 0) {
    code $path
  } else if ((which code-insiders | length) > 0) {
    code-insiders $path
  } else {
    print "code or code-insiders not found in PATH"
  }
}

# Set the notes of the VM to the ArmID and Azure portal URL. Only works on the first appliance VM (non-upgraded VM). We don't have the ARMID details in cloudinit data for upgraded VMs.
def set-appl-details-from-path [appl_path: string] {
  let appl_vm = (govc object.collect -json $appl_path | from json)
  def extract_cloudinit_data [xyzdata: string] {
    let cloudinit_data = $appl_vm
      | where name == config
      | get val
      | get extraConfig
      | first
      | where key == $xyzdata
      | get value
      | decode base64
      | first
      | from yaml
    $cloudinit_data
  }
  # let appl_metadata = (extract_cloudinit_data "guestinfo.metadata")
  # let appl_userdata = (extract_cloudinit_data "guestinfo.userdata")
  let appl_vendordata = (extract_cloudinit_data "guestinfo.vendordata")
  let appl_details = $appl_vendordata.runcmd.0
  let armId = $appl_details
  | str substring 5..
  | split row ","
  | each { split column ":" key val | first }
  | where key == "ArmId"
  | get val
  | first
  let notes = $"ArmID: ($armId)\n\nPortal URL: https://portal.azure.com/#resource($armId)/overview"
  govc vm.change -vm $appl_path -annotation $notes
  print $"++++ Notes updated for ($appl_path):\n($notes)\n\n\n"
}

export def set-appl-details [name: string] {
  let appl_path: string = (govc find -type m -name $name)
  set-appl-details-from-path $appl_path
}

export def set-appl-details-all [] {
  let appls = (govc find -type m -name "*-control-plane-0" | lines)
  for appl in $appls {
    try {
      print $"Setting appl details for ($appl)"
      set-appl-details-from-path $appl
    } catch {
      print $"Failed to set appl details for ($appl)"
    }
  }
}

export def k8s-req-and-lim [] {
  let pods = kubectl get pods -A -o yaml | from yaml
  let containers = $pods.items
  | each {|$pod|
    $pod
    | insert resource_usage (
      $pod.spec.containers | each {|$container|
        $container
        | insert cpu_req ($container.resources.requests? | default {} | get -i cpu | default "0")
        | insert mem_req ($container.resources.requests? | default {} | get -i memory | default "0")
        | insert cpu_lim ($container.resources.limits? | default {} | get -i cpu | default "0")
        | insert mem_lim ($container.resources.limits? | default {} | get -i memory | default "0")
        | insert container_name $container.name
        | insert pod_name $pod.metadata.name
        | insert namespace $pod.metadata.namespace
        | select namespace pod_name container_name cpu_req mem_req cpu_lim mem_lim
      }
    )
    | get resource_usage
    | first
  } | to csv
}
