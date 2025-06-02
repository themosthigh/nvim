return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      ---@diagnostic disable-next-line: different-requires
      require("lspconfig").lua_ls.setup({})
    end,
  },

  -- Diagnostics
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
      require("trouble").setup({})
    end,
  },


  -- Code actions
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "folke/snacks.nvim",    opts = { terminal = {} } }
    },
    event = "LspAttach",
    opts = {
      picker = {
        "snacks"
      }
    }
  }
}
