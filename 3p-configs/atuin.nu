# Source this in your ~/.config/nushell/config.nu
# $env.ATUIN_SESSION = (atuin uuid)



# The up arrow keybinding has surprising behavior in Nu, and is disabled by default.
# See https://github.com/atuinsh/atuin/issues/1025 for details
# $env.config = (
#     $env.config | upsert keybindings (
#         $env.config.keybindings
#         | append {
#             name: atuin
#             modifier: none
#             keycode: up
#             mode: [emacs, vi_normal, vi_insert]
#             event: { send: executehostcommand cmd: (_atuin_search_cmd '--shell-up-key-binding') }
#         }
#     )
# )

export-env {
    if "ATUIN_KEYBINDING_TOKEN" not-in $env {
        $env.ATUIN_KEYBINDING_TOKEN = $"# (random uuid)"
    }
    let INCOGNITO = "INCOGNITO"
    # Magic token to make sure we don't record commands run by keybindings
    let ATUIN_KEYBINDING_TOKEN = $env.ATUIN_KEYBINDING_TOKEN
    let _atuin_pre_execution = {||
        if INCOGNITO in $env {
            return
        }
        let cmd = (commandline)
        if ($cmd | is-empty) {
            return
        }
        if not ($cmd | str starts-with $env.ATUIN_KEYBINDING_TOKEN) {
            $env.ATUIN_HISTORY_ID = (atuin history start -- $cmd)
        }
    }

    let _atuin_pre_prompt = {||
        if INCOGNITO in $env {
            return
        }
        let last_exit = $env.LAST_EXIT_CODE
        if 'ATUIN_HISTORY_ID' not-in $env {
            return
        }
        with-env { ATUIN_LOG: error } {
            do { atuin history end $'--exit=($last_exit)' -- $env.ATUIN_HISTORY_ID | null } | null

        }
        hide-env ATUIN_HISTORY_ID
    }

    def _atuin_search_cmd [...flags: string] {
        [
            $env.ATUIN_KEYBINDING_TOKEN,
            ([
                `commandline (ATUIN_LOG=error run-external --redirect-stderr atuin search`,
                ($flags | append [--interactive, --] | each {|e| $'"($e)"'}),
                `(commandline) | complete | $in.stderr | str substring ..-1)`,
            ] | flatten | str join ' '),
        ] | str join "\n"
    }

    $env.ATUIN_SESSION = (atuin uuid)
    $env.config = ($env | default {} config).config
    $env.config = ($env.config | default {} hooks)
    $env.config = (
        $env.config | upsert hooks (
            $env.config.hooks
            | upsert pre_execution (
                $env.config.hooks | get -i pre_execution | default [] | append $_atuin_pre_execution)
            | upsert pre_prompt (
                $env.config.hooks | get -i pre_prompt | default [] | append $_atuin_pre_prompt)
        )
    )

    $env.config = ($env.config | default [] keybindings)

    $env.config = (
        $env.config | upsert keybindings (
            $env.config.keybindings
            | append {
                name: atuin
                modifier: control
                keycode: char_r
                mode: [emacs, vi_normal, vi_insert]
                event: { send: executehostcommand cmd: (_atuin_search_cmd) }
            }
        )
    )
}