# Keybindings

- **Random useful**
	- `=` (in selection) - reformat
    - `:bd` - delete currend buffer

- **keymaps.lua**
    - `<leader> + fv` - open netrw
    - `J`  - Append bottom line to current and keep cursor in same position
    - `ctrl + u`  - Move up and keep cursor in same position
	- `ctrl + d`  - Move down and keep cursor in same position
    - `<leader> + o` - Add new line under cursor without leaving normal mode
    - `<leader> + O` - Add new line above cursor without leaving normal mode
	- `<leader> + Y` - copy line to clipboard
	- `<leader> + y` - copy selection to clipboard
	- `ctrl + c` - replacement for esc
	- `<leader> + s` - rename word under cursor
	- `<leader> + S` - search and replace
	- `<leader> + p` - delete without sending to register

- **LSP**
	- `gl` - show error
    - `gd` - go to definition
    - `gD` - go to declaration
    - `K` - show info

- **Netrw**
	- `d` - create directory
	- `%` - create file

- **telescope.lua**
	- `<leader> + ff` - find files
	- `<leader> + fg` - live grep
	- `<leader> + fb` - buffers

- **harpoon.lua**
    - `<leader> + fh` - view files in harpoon
	- `<leader> + a` - add file to harpoon
	- `<leader> + jj` - open file 1
	- `<leader> + jk` - open file 2
	- `<leader> + jl` - open file 3
	- `<leader> + j;` - open file 4

- **commentary**
	- `<leader>c` - comments selection or a line

- **copilot**
    - `ctrl + /` - accept suggestion
    - `<leader>ct` - toggle copilot suggestions

- **nvim-surround**
    - `surr*ound_words` -> `ysiw)` -> `(surround_words)`
    - `*make strings` -> `ys$"` -> `"make strings"`
    - `[delete ar*ound me!]` -> `ds]` -> `delete around me!`
    - `remove <b>HTML t*ags</b>` -> `dst` -> `remove HTML tags`
    - `'change quot*es'` -> `cs'"` -> `"change quotes"`
    - `<b>or tag* types</b>` -> `csth1<CR>` -> `<h1>or tag types</h1>`
    - `delete(functi*on calls)` -> `dsf` -> `function calls`

- **todo-comments**
    - `<leader>T` -> show all TODO in project
    - `<leader>ta` -> show all kewords in project
    - `<leader>tf` -> show all FIX in project
    - `<leader>tp` -> show all HACK in project
    - `<leader>th` -> show all PERF in project
    - `<leader>tn` -> show all NOTE in project
    - `<leader>tw` -> show all WARNING in project
    - `<leader>tt` -> show all TEST in project

