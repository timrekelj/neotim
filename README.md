# My personal neovim configuration

## Requirements
 - [neovim (v0.7.x)](https://github.com/neovim/neovim/releases/tag/v0.7.2)
 - [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
 - [npm](https://github.com/npm/cli) for downloading packages of LSP language servers

## Installation

#### 1. Clone repository

```sh
git clone git@github.com:timrekelj/nvim-config ~/.config/nvim
```

#### 2. Start neovim with `PackerSync` command:

```sh
nvim +PackerSync
```

## Bindings

> This are not all keybindings, they are just most used ones. For all keybindings check in configuration files

**\<leader\>** = "\<Space/\>"

| Plugin    | Mapping      | Action                         |
| --------- | ------------ | ------------------------------ |
|           | \<C-H\>      | Move one split left            |
|           | \<C-J\>      | Move one split down            |
|           | \<C-K\>      | Move one split up              |
|           | \<C-L\>      | Move one split right           |
|           | \<C-S\>      | Open search & replace          |
|           | \<leader\>t  | Open a terminal buffer         |
|           | \<leader\>O  | Split window vertically        |
|           | \<leader\>E  | Split window horizontally      |
|           | tj           | Move one tab left              |
|           | tk           | Move one tab right             |
|           | tn           | Create a new tab               |
|           | to           | Close all other tabs           |
| lspConfig | gD           | Goto declaration               |
| lspConfig | gd           | Goto definition                |
| lspConfig | gi           | Goto implementation            |
| lspConfig | K            | Hover                          |
| Telescope | \<leader\>p  | Open file picker               |
| Telescope | \<leader\>g  | Open git branches              |
| Telescope | \<leader\>b  | Open buffers                   |
| Telescope | \<leader\>n  | Open file tree                 |

