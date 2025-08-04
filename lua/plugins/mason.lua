-- DEV Dependency management

return {
  -- Mason
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Mason lspconfig
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_enabled = true,
      automatic_intallation = true,
      -- preload any lsp servers you want to use here
      ensure_installed = require("config.mason-lsp").servers
    }
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      -- Mason tool installer for custom lsps and formatters
      local status_ok, opts = pcall(require, "config.mason-lsp")
      if status_ok and opts.ensure_installed then
        require("mason-tool-installer").setup({
          ensure_installed = opts.ensure_installed,
        })
      end
    end,
  },

}
