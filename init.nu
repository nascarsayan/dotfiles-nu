export-env {
  if ("once" in $env) {
    return
  }
  load-env {
    PATH: (
      $env.PATH
      | split row (char esep)
      | prepend "/home/linuxbrew/.linuxbrew/bin"
      | prepend ($env.HOME | path join ".gobrew" "current" "bin")
      | prepend ($env.HOME | path join ".gobrew" "bin")
      | prepend ($env.HOME | path join "go" "bin")
    )
    EDITOR: "hx"
    ZELLIJ_AUTO_ATTACH: "true"
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

# Somehow PATH is getting updated twice, due to auto_zellij and export-env,
# so we need to make sure that we only run export-env once
if (not ("once" in $env)) {
  $env.once = "true"
}

auto_zellij
