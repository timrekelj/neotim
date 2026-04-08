vim.api.nvim_create_autocmd({ "FileType", "BufReadPost", "BufNewFile" }, {
  desc = "Start native tree-sitter when a parser exists",
  callback = function(args)
    local ok = pcall(vim.treesitter.start, args.buf)
    if not ok then
      return
    end

    vim.bo[args.buf].syntax = "on"
  end,
})
