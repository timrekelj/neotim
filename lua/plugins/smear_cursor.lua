return {
  "sphamba/smear-cursor.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("smear_cursor").setup()
  end,
}
