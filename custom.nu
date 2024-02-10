export-env { load-env {
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
}}

export def auto_zellij [] {
  if ((not ("ZELLIJ" in $env))
    and
    ((which code | length) == 0) and ((which code-insiders | length) == 0)
  ) {
    # Check if ZELLIJ_AUTO_ATTACH is set to "true"
    if ("ZELLIJ_AUTO_ATTACH" in $env and $env.ZELLIJ_AUTO_ATTACH == "true") {
      # Run zellij with the attach option
      zellij attach -c
    } else {
      # Run zellij without options
      zellij
    }

    # Check if ZELLIJ_AUTO_EXIT is set to "true"
    if ("ZELLIJ_AUTO_EXIT" in $env and $env.ZELLIJ_AUTO_EXIT == "true") {
      # Exit NuShell
      exit
    }
  }
}

export def gcl [$url: string] {
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
  let $dir_path = ($env.HOME | path join "Code" $path)
  git clone $url $dir_path
}

export def gco [$branch: string] {
  git checkout $branch
}

export def git_current_branch () {
  git branch --show-current | str trim -c "\n"
}

export def ggpush [$message: string] {
  git add .
  git commit -m $message
  git push origin (git_current_branch)
}

export def ggpull () {
  git pull origin (git_current_branch)
}

source ./completions/git.nu
source ./completions/make.nu

source ./configs/atuin.nu
source ./configs/starship.nu
source ./configs/zoxide.nu

auto_zellij
