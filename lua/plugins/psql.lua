local psql = require('psql')

vim.keymap.set(
    'n',
    '<leader>x',
    psql.psql_run_curr_buf,
    { desc = 'Execute the current buffer with psql' }
)

vim.keymap.set(
    'x',
	'<leader>x',
	'<ESC><CMD>lua require("psql").psql_run_visual()<CR>',
	{ desc = 'Execute selection with psql' }
)

