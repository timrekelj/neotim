return {
  "trstringer/psql.nvim",
  ft = { "sql", "pgsql" },
  keys = {
    {
      "<leader>x",
      function()
        require("psql").psql_run_curr_buf()
      end,
      mode = "n",
      desc = "Execute the current buffer with psql",
    },
    {
      "<leader>x",
      '<ESC><CMD>lua require("psql").psql_run_visual()<CR>',
      mode = "x",
      desc = "Execute selection with psql",
    },
  },
}
