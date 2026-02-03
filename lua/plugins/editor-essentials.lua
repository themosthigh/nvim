return {


  -- Comments
  {
    "numToStr/Comment.nvim",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("ts_context_commentstring").setup({
        enable = true,
        enable_autocmd = false,
      })

      require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })
    end,
  },


  -- Comment box
  {
    "LudoPinelli/comment-box.nvim",
    dependencies = {
      "folke/which-key.nvim",
    },

    config = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>cbc", ":CBcatalog<cr>", desc = "Catalog" },
        { "<leader>cbb", ":CBccbox<cr>",   desc = "Center Box" },
        { "<leader>cbl", ":CBllline<cr>",  desc = "Title Line" },
        { "<leader>cbl", ":CBline<cr>",    desc = "Line" }
      })
    end
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  -- -- Winbar
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("barbecue").setup({})
    end,
  },


  -- find and replace
  {
    "MagicDuck/grug-far.nvim",
  },

  -- inline diagnostics
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup {
        options = {
          multilines = { enabled = true },
          show_source = { enabled = true },
          use_icons_from_diagnostic = true,
          -- add_messages = { display_count = true, messages = true }

        }
      }
    end
  },
}
