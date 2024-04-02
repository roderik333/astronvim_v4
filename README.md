# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

# Note to self.

nvim/lua/plugins/mason.lua

moved from "pyright", "ruff-lsp" to "pyls"

For this to work :Pylspinstall pylsp-ruff

The [tool.ruff] section in pyproject.toml is honored!

I have not been able to make the server section in mason.lua work.

```json
pylsp ={
  settings = {
    pylsp = {
    plugins = {
    },
  },
}
```

I've tried everything.

Also, install mypy.

Will try this config for a bit.. to see if I like it better than pyright.

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
