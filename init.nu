export-env {
  if ("once" not-in $env) {
    load-env {
      PATH: (
        $env.PATH
        | split row (char esep)
        | prepend "/home/linuxbrew/.linuxbrew/bin"
        | prepend ($env.HOME | path join ".gobrew" "current" "bin")
        | prepend ($env.HOME | path join ".gobrew" "bin")
        | prepend ($env.HOME | path join "go" "bin")
        | prepend ($env.HOME | path join ".config" "carapace" "bin")
      )
      EDITOR: "hx"
      ZELLIJ_SSH_PANE_NAME: "ssh_zellij"
      HELM_EXPERIMENTAL_OCI: "1"
      GO111MODULE: "on"
      LC_ALL: "en_IN.UTF-8"
      LANG: "en_IN.UTF-8"
      DOCKER_BUILDKIT: "1"
    }
  }
}

source ./completions/mod.nu
source ./3p-configs/mod.nu
source ./aliases/mod.nu
source ./custom/mod.nu
source ./custom/data/data.nu

let get_govc_entry = (get_govc_entry_curry $rec)

# Set the govc environment
export def --env set_govc_env [vc_env: string] {
  do $get_govc_entry $vc_env | load-env
}

# Somehow PATH is getting updated twice, due to ssh-attach-zellij and export-env,
# so we need to make sure that we only run export-env once
if ($env.once? | is-empty) {
  $env.once = "true"
}

ssh-attach-zellij
