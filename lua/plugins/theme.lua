return {
  "duarteocarmo/cursor-themes",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark"

    vim.cmd.colorscheme("cursor-dark")
  end,
}
