return {
  -- AI Completions
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        disable_keymaps = false,
        disable_inline_comepletion = false,
      })
    end,
  },

  -- {
  --   "github/copilot.vim",
  --   event = "BufEnter"
  -- }
}
