return {
  "aspeddro/gitui.nvim",
  cmd = { "Gitui" },
  keys = {
    {
      "<leader>gg",
      function()
        require("gitui").open()
      end,
    },
  },
  opts = {
    command = {
      enable = true,
    },
    binary = "gitui",
    args = {},
    window = {
      options = {
        width = 90,
        height = 80,
        border = "rounded",
      },
    },
  },
}
