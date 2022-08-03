# My personal neovim configuration

## Download configuration

### 1. Clone repository

```sh
git clone git@github.com:timrekelj/nvim-config ~/.config/nvim
```

### 2. Install plugins

##### Install Packer

This configuration uses [Packer](https://github.com/wbthomason/packer.nvim) as its
Neovim plugin manager.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

To install the plugins used by quick.nvim, you need to do so using Packer.

```
nvim ~/.config/nvim/init.lua
```

```
:PackerInstall
```

> If you get error when executing :PackerInstall, make sure you have the latest neovim version



## Bindings

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
| coc       | K            | Hover over symbol              |
| coc       | \<C-Space\>  | Open autocompletion            |
| coc       | \<CR\>       | Select autocompletion          |
| coc       | \<S-TAB\>    | Browse previous autocompletion |
| coc       | \<TAB\>      | Browse next autocompletion     |
| coc       | \<leader\>.  | Open code actions              |
| coc       | \<leader\>f  | Format file with prettier      |
| coc       | \<leader\>l  | Execute code autofix           |
| coc       | \<leader\>rn | Rename symbol                  |
| coc       | gd           | Go to definition               |
| Telescope | \<leader\>p  | Open file picker               |
| Telescope | \<leader\>g  | Open git branches              |
| Telescope | \<leader\>n  | Open file tree                 |
