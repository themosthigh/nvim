return {
  -- AI Completions
  -- {
  --   "supermaven-inc/supermaven-nvim",
  --   config = function()
  --     require("supermaven-nvim").setup({
  --       disable_keymaps = true,
  --       disable_inline_comepletion = true,
  --     })
  --   end,
  -- },

  {
    "github/copilot.vim",
    event = "BufEnter"
  }
}
