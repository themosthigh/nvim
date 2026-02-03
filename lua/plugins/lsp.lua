return {
  -- workspace diagnostics
  { "artemave/workspace-diagnostics.nvim" },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = { diagnostics = { virtual_text = false } },
    config = function()
      vim.lsp.enable("lua_ls")
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })
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
      { "folke/snacks.nvim",    opts = { terminal = {} } },
    },
    event = "LspAttach",
    opts = {
      picker = {
        "snacks",
      },
    },
  },
}
