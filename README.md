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
- [`fnm`](https://github.com/Schniz/fnm): 🚀 Fast and simple Node.js version manager, built in Rust

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
brew install nushell fzf zoxide starship helix zellij atuin gh fnm

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
    - [fnm.nu](./3p-configs/fnm.nu) was copied from [nu_scripts](https://github.com/nushell/nu_scripts/blob/main/modules/fnm/fnm.nu)
    - I edited [zoxide.nu](./3p-configs/zoxide.nu) because it was using some deprecated / removed commands.
    - I edited a few files so that `use` command can also be used to import those files.

- The [git aliases](./aliases/git.nu) was downloaded from [nu-scripts](https://github.com/nushell/nu_scripts/blob/main/aliases/git/git-aliases.nu)

- The [kubectl aliases](./aliases/kubectl.nu) was downloaded from [kubcetl-aliases](https://github.com/nascarsayan/kubectl-aliases)

### Installation

```nu
let dotfiles_dir = $"($env.HOME)/Code/github.com/nascarsayan/dotfiles-nu"
git clone https://github.com/nascarsayan/dotfiles-nu.git $dotfiles_dir
# Copy the example data file to the actual data file, edit it as needed
cp $"($dotfiles_dir)/custom/data/data.example.nu" $"($dotfiles_dir)/custom/data/data.nu"
(char newline) + $"source ($dotfiles_dir)/init.nu" | save --append $"($nu.default-config-dir)/config.nu"
```

Copy other config files as needed.

```nu
ln -s $"($dotfiles_dir)/.config/starship.toml" ~/.config/starship.toml
ln -s $"($dotfiles_dir)/.config/zellij" ~/.config/zellij
```

### Changing default shell

```sh
# Add nushell to /etc/shells
echo "$(which nu)" | sudo tee -a /etc/shells
# Change default shell
chsh -s $(which nu)
```

## Shell History

### Incognito

To go to incognito mode, you can run this.
The run command wont be saved to either of these files:
- atuin (thanks to `INCOGNITO` env var set to any random value, here empty)
- nushell history file (thanks to `--no-history`).

This is helpful in trying ad-hoc commands, especially containing sensitive information such as passwords or tokens.

```nu
INCOGNITO= nu --no-history
```

### Import to another machine

To import your shell history to another machine:
- Get your existing nushell history file `~/.config/nushell/history.txt` to the new machine.
- Merge the contents of the history file to the new machine's history file. (You can copy paste the contents of the file to the new machine's history file)
- Run `atuin import auto` to import the history to atuin.
