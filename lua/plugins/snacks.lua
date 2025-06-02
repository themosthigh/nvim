local header_image = require("builtin.ui.figlet").vim_dos_rebel

local image_path = vim.fn.stdpath("config") .. "/assets/kanagawa_jack.png"


local chafa_section = {
  section = "terminal",
  cmd     =
      "chafa " .. image_path .. " --format symbols --symbols vhalf --size 60x24 --stretch; sleep .1",
  height  = 24,
  width   = 60,
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
        preset = {
          header = header_image,

          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = function()
                vim.fn.execute("cd" .. vim.fn.stdpath("config"))
                vim.cmd("Neotree toggle")
              end
            },
            -- TODO: set up mini sessions
            -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          }

        },
        sections = {
          {
            pane = 1,
            chafa_section,
            {
              section = "keys",
              title = "Commands",
              gap = 1,
              padding = 1,
            },
            { section = "startup", },
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
        }
      }
    },
  },

}
