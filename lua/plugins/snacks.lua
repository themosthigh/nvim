local header_image = require("builtin.ui.figlet").vim_dos_rebel


return {
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
      },


      -- dashboard
      dashboard = {
        emable = true,
        preset = {
          header = header_image,
        }
      }
    },
  },

}
