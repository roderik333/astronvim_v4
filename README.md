# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

# My config

Mason install:

- basedpyright
- ruff-lsp
- diagnosticls
- prettierd
- marksman
- gofumpt
- goimport
- gopls
- lua-language-server
- yaml-language-server

## additional plugins and config.

~/.config/nvim/lua/plugins:

- cmp-cmdline.lua - offers completion in nvim commandline
- codeium.lua - much(!) less intrusive free Copilot alternative
- git-stuff.lua - blame for every line of code
- oil.lua - the best file manager, ever
- trouble.lua - because trouble is best
- undotree.lua - g-/g+ is nice, undotree is nicer
- There are minor changes to astrolsp.lua, telescope.lua and user.lua (my own logo)
- Theme catppuccin-mocha is set in astroui.lua
- Most, if not all custom keybindings are added to astrocore.lua

~/config/nvim/lua:

- added custom filetype to polish.lua
- community.lua has some additions

## Note to self

Stick with ruff-lsp and basedpyrigt for python development
Makes life easier.

# On with the show

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
