return {
  {
    "echasnovski/mini.nvim",
    dependencies = { 'echasnovski/mini.icons', version = false },
    version = "*",
    config = function()
      -- HIGHLIGHT WORD UNDER CURSOR
      require("mini.cursorword").setup()


      -- AUTOPAIRS
      require('mini.pairs').setup()

      -- COMPLETIONS
      -- require("mini.completion").setup()

      require("mini.icons").setup()

      -- NOTIFICATIONS
      -- require("mini.notify").setup()


      -- SURROUND
      -- require("mini.surround").setup()

      -- COMPLETION
      require("mini.completion").setup()
      vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
        callback = function()
          local is_source_file = vim.bo.buftype == "" and vim.fn.expand("%") ~= ""
          vim.b.minicompletion_disable = not is_source_file
        end,
      })
    end,
  },
}
