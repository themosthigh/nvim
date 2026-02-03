-- Check for updates on buffer focus
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained" }, {
  callback = function()
    vim.cmd("checktime")
  end,
})
