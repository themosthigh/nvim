local header_image = require("builtin.ui.figlet").vim_dos_rebel
local chafa_section = {
  section = "terminal",
  cmd     =
  "chafa ~/.config/nvim/assets/960px-Tsunami_by_hokusai_19th_century.jpg --format symbols --symbols vhalf --size 60x15 --stretch; sleep .1",
  height  = 15,
  padding = 1,
};

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
        preset = { header = header_image, },
        sections = {
          {
            pane = 1,
            chafa_section,
            -- { section = "header" },
            { section = "keys",   gap = 1, padding = 1 },
            { section = "startup" },
          },
          -- {
          --   section = "terminal",
          --   cmd = "pokemon-colorscripts -r; sleep .1",
          --   random = 10,
          --   pane = 2,
          --   indent = 4,
          --   height = 30,
          --
          -- },
          -- {
          --   pane = 2,
          -- }
        }
      }
    },
  },

}
