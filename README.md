# My personal neovim configuration

## Download configuration

### Clone repository

```sh
git clone git@github.com:timrekelj/nvim-config ~/.config/nvim
```

### Install plugins

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

## coc.nvim

This configuration uses [coc.nvim](https://github.com/neoclide/coc.nvim) for
intellisense, instead of the built-in Neovim LSP.
Configuration doesn't ship with any default coc plugins though, so you have to
install the ones you want to use. For example if you want to use nvimefor
TypeScript programming, you'll have to install the coc-tsserver plugin like
this.

```
:CocInstall coc-tsserver
```

---


## Bindings

**\<leader\>** = "\<Space/\>"

| Plugin    | Mapping      | Action                         |
| --------- | ------------ | ------------------------------ |
|           | \<C-H\>      | Move one split left            |
|           | \<C-J\>      | Move one split down            |
|           | \<C-K\>      | Move one split up              |
|           | \<C-L\>      | Move one split right           |
|           | \<C-N\>      | Open file explorer             |
|           | \<C-S\>      | Open search & replace          |
|           | \<leader-t\> | Open a terminal buffer         |
|           | sp           | Split window horizontally      |
|           | tj           | Move one tab left              |
|           | tk           | Move one tab right             |
|           | tn           | Create a new tab               |
|           | to           | Close all other tabs           |
|           | vs           | Split window vertically        |
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
| Telescope | \<C-B\>      | Open buffer picker             |
| Telescope | \<C-F\>      | Open project search            |
| Telescope | \<C-P\>      | Open file picker               |
