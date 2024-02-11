## NuShell dotfiles

This is the migration of my dotfiles from zsh to NuShell. This is a work in progress and I will be adding more as I go along.
The zsh dotfiles can be found [here](https://github.com/nascarsayan/init-linux/tree/master/home/.oh-my-zsh/custom)

### Tools

There are configs for some tools that I use. These include:
- [`fzf`](https://github.com/junegunn/fzf): 🌸 A command-line fuzzy finder.
- [`zoxide`](https://github.com/ajeetdsouza/zoxide): A smarter `cd` command that tracks your most used directories.
- [`starship`](https://github.com/starship/starship): A minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [`helix`](https://github.com/helix-editor/helix): A fast, lightweight, and cross-platform text editor.
- [`zellij`](https://github.com/zellij-org/zellij): A terminal workspace with batteries included. (tmux alternative)
- [`atuin`](https://github.com/atuinsh/atuin): ✨ Magical shell history
- [`carapace`](https://github.com/rsteube/carapace-bin): multi-shell multi-command argument completer

1. Install linuxbrew pre-requisites:

```sh
sudo apt-get install build-essential procps curl file git
```

2. Install [linuxbrew](https://docs.brew.sh/Homebrew-on-Linux)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Install the tools:

```sh
brew install nushell fzf zoxide starship helix-editor zellij atuin gh

brew tap rsteube/homebrew-tap
brew install rsteube/tap/carapace
```

Run nushell once to generate the default config files at `$nu.default-config-dir`:

```sh
nu
```


### Generated files

- The files in [3p-configs](./3p-configs/) are generated by the respective tools.
    ```sh
    starship init nu | save -f starship.nu
    atuin init nu | save -f atuin.nu
    zoxide init nushell | save -f zoxide.nu
    carapace _carapace nushell | save -f carapace.nu
    ```
    - I edited [zoxide.nu](./3p-configs/zoxide.nu) because it was using some deprecated / removed commands.
    - I edited a few files so that `use` command can also be used to import those files.

- The [git aliases](./aliases/git.nu) was downloaded from [nu-scripts](https://github.com/nushell/nu_scripts/blob/main/aliases/git/git-aliases.nu)

- The [kubectl aliases](./aliases/kubectl.nu) was downloaded from [kubcetl-aliases](https://github.com/nascarsayan/kubectl-aliases)

### Installation

```nu
let dest = "~/Code/github.com/nascarsayan/dotfiles-nu"
let dest_parent = (dirname $dest)
git clone https://github.com/nascarsayan/dotfiles-nu.git $dest_parent
# Copy the example data file to the actual data file, edit it as needed
cp $"($dest)/custom/data/data.example.nu" $"($dest)/custom/data/data.nu"
(char newline) + $"source ($dest)/init.nu" | save --append $nu.default-config-dir/config.nu
```

Copy other config files as needed.

```nu
cp $"($dest)/other/starship.toml" ~/.config/starship.toml
```
