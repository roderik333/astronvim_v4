# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

# Note to self.

Tried a lot of stuff..

Tried pyright/ruff, tried pyls/mypy, tried jedi/mypy..

Have landed on pyright/ruff for the time being.

nvim/lua/plugins/mason.lua

Moved to "pyright AND "pyls"

Why, because of Rope.

For this to work:

```sh

PylspInstall python-lsp-ruff
PylspInstall pylsp-rope

```

The [tool.ruff] and [tool.pyright] section in pyproject.toml is honored!
I can't say that I have gotten [tool.rope] to do anything interresting.

On top of that, I have not been able to make the server section in mason.lua work.

```json
pylsp ={
  settings = {
    pylsp = {
    plugins = {
    },
  },
}
```

I've tried everything... to no avail

Will try this config for a bit.. to see if I like it better than just pyright. The LSP server seems to have some timeout issues.

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
