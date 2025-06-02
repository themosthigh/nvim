return {
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {} -- your configuration
  },

  -- {
  --   "akinsho/flutter-tools.nvim",
  --   event = "VeryLazy",
  --   lazy = false,
  --   cond = not vim.g.vscode,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "stevearc/dressing.nvim", -- optional for vim.ui.select
  --   },
  --   config = function()
  --     require("flutter-tools").setup({
  --       ui = {
  --         border = "rounded",
  --       },
  --       widget_guides = {
  --         enabled = true,
  --       },
  --       fvm = true,
  --     })
  --   end,
  -- },

  -- Go
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      diagnostic = {  -- set diagnostic to false to disable vim.diagnostic setup
        hdlr = false, -- hook lsp diag handler and send diag to quickfix
        underline = true,
        -- virtual text setup
        virtual_text = { spacing = 0, prefix = "■" },
        signs = true,
        update_in_insert = true,
      },
      lsp_inlay_hints = {
        enable = true,
      },
    },

    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries,
  },


  -- -- Rust tools
  -- {
  --   'mrcjkb/rustaceanvim',
  --   dependencies = {
  --     'mfussenegger/nvim-dap',
  --   },
  --   version = '^5', -- Recommended
  --   lazy = false,   -- This plugin is already lazy
  -- },


  -- REST
  -- {
  --   'mistweaverco/kulala.nvim',
  --   config = function()
  --     -- Setup is required, even if you don't pass any options
  --     require('kulala').setup()
  --   end
  -- },


  -- MDX
  {
    "davidmh/mdx.nvim",
    lazy = true,
    ft = { "md", "mdx", "mdoc" },
    config = true,
    dependencies = { "nvim-treesitter/nvim-treesitter" }
  },

  -- Typescript
  {
    "yioneko/nvim-vtsls",
  }
}
