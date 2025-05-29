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

    config = function()
      local wk = require("which-key")

      wk.register({
        ["<Leader>"] = {
          B = {
            name = " □  Boxes",
            b = { "<Cmd>CBccbox<CR>", "Box Title" },
            t = { "<Cmd>CBllline<CR>", "Titled Line" },
            l = { "<Cmd>CBline<CR>", "Simple Line" },
            m = { "<Cmd>CBllbox14<CR>", "Marked" },
            -- d = { "<Cmd>CBd<CR>", "Remove a box" },
          },
        },
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

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      image = { enabled = true },
      -- indent = { enabled = true },
      input = { enabled = true },
      lazygit = { enabled = true },
      notifier = { enabled = true },
      picker = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      zen = { enabled = true },


      -- styles
      styles = {
        notification = {
          wo = { wrap = true } -- Wrap notifications
        }
      }
    },
  }
}
