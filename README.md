# 🪨 Granite

`granite.nvim` is a rock-solid theme for [Neovim](https://neovim.io/) with a
restrained, muted color scheme for minimalists. It champions the text-based
interface of the terminal and adds color only where it makes sense. The result
keeps the focus on language structure and control flow.

## Installation

Neovim 0.12’s `vim.pack`:

```lua
vim.pack.add("https://github.com/anttikivi/granite.nvim")
```

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "anttikivi/granite.nvim" }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use "anttikivi/granite.nvim"
```

[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'anttikivi/granite.nvim'
```

## Usage

After installing `granite.nvim`, you can simply set it as your color scheme.

For Vim, enable `termguicolors` first.

```vim
set termguicolors
colorscheme granite
```

```lua
vim.cmd.colorscheme("granite")
```

## Configuration

<!-- prettier-ignore-start -->
> [!IMPORTANT]
> Set the configuration options _before_ setting the color scheme.
<!-- prettier-ignore-end -->

`granite.nvim` comes in two variants, dark and light. It automatically follows
the value of `vim.o.background` when selecting the theme. Right now, it is not
possible to configure this behavior.

There is no need to call `setup` if you don’t want to change the default
configuration options.

In Vim, transparent background uses `g:granite_transparent` instead of Lua
`setup()`.

```vim
let g:granite_transparent = 1
colorscheme granite
```

```lua
require("granite").setup({
    ---Controls whether the color scheme sets the background color. Set to
    ---`true` to enable transparent background in Neovim.
    ---@type boolean
    transparent = false,
})
```

Customizing the colors is not currently supported but you can get the color
palettes from the `colors` module:

```lua
local dark = require("granite.colors").dark
local light = require("granite.colors").light
```

This returns a table where the keys are the color names and the values are the
hex color codes.

## Extras

`granite.nvim` includes color configurations for
[Ghostty](https://ghostty.org/). You can find them at
[`extras/ghostty`](extras/ghostty).
