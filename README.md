# The best neovim configuration

> This configuration was heavily inspired by [the Primeagen](https://www.youtube.com/watch?v=w7i4amO_zaE).

## Requirements
 - [neovim (v0.8.x)](https://github.com/neovim/neovim/releases/tag/v0.7.2)
 - [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
 - [npm](https://github.com/npm/cli) for downloading packages of LSP language servers

## Installation

#### 1. Clone repository

```sh
git clone git@github.com:timrekelj/neotim ~/.config/nvim
```

#### 2. Start neovim with `PackerSync` command:

```sh
nvim +PackerSync
```

## Keybindings

- **keymaps.lua**
	- `<leader> + fv` - open netrw
	- `J` & `K` - Move highlighted lines
	- `J`  - Append bottom line to current and keep cursor in same position
	- `<leader> + Y` - copy line to clipboard
	- `<leader> + y` - copy selection to clipboard
	- `ctrl + c` - replacement for esc
	- `<leader> + s` - rename word under cursor
	- `<leader> + S` - search and replace
	- `<leader> + l` - delete without sending to register

- **Random**
	- `:so` - source current file
	- `=` while selection - reformat

- **LSP**
	- `gl` - show error

- **Netrw**
	- `d` - create directory
	- `%` - create file

- **telescope.lua**
	- `<leader> + ff` - find files
	- `<leader> + fg` - live grep
	- `<leader> + fb` - buffers

- **harpoon.lua**
	- `<leader> + a` - add file to harpoon
	- `ctrl + e` - open file 1
	- `ctrl + t` - open file 2
	- `ctrl + n` - open file 3
	- `ctrl + s` - open file 4

- **fugitive.lua**
	- `<leader> + gs` - open git status

- **undotree.lua**
	- `<leader> + u` - open undotree

- **commentary**
	- `gc`  - comments selection

- **surround**
	- `surround_words` -> `ysiw)` -> `(surround_words)`
	- `make strings`  -> `ys$"` -> `"make strings"`
	- `[delete around me!]` -> `ds]` -> `delete around me!`
	- `remove <b>HTML tags</b>` -> `dst` -> `remove HTML tags`
	- `'change quotes'` -> `cs'"` -> `"change quotes"`
	- `<b>or tag types</b>` -> `csth1<CR>` -> `<h1>or tag types</h1>`
	- `delete(function calls)` -> `dsf` -> `function calls`
