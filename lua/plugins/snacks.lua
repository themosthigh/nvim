local header_image = require("builtin.ui.figlet").vim_dos_rebel
local simpsons = require("builtin.ui.simpsons")

local image_path = vim.fn.stdpath("config") .. "/assets/kanagawa_jack.png"

local chafa_section = {
  section = "terminal",
  cmd = "chafa " .. image_path .. " --format symbols --symbols vhalf --size 60x24 --stretch; sleep .1",
  height = 24,
  width = 60,
  padding = 1,
}

return {

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      image = { enabled = true },
      indent = {
        enabled = true,
        animate = { enabled = false },
      },
      input = { enabled = true },
      lazygit = { enabled = true },
      notifier = { enabled = true },
      picker = { enabled = true, hidden = true, ignored = false },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      terminal = { enabled = true },
      words = { enabled = true },
      zen = { enabled = true },

      -- styles
      styles = {
        notification = {
          wo = { wrap = true }, -- Wrap notifications
        },
      },

      -- dashboard
      dashboard = {
        emable = true,
        preset = {
          header = require("builtin.ui.commie").hammer_and_sickle,

          -- Shortcuts
          keys = {
            {
              icon = " ",
              key = "f",
              desc = "Find File",
              action = ":lua Snacks.dashboard.pick('files')",
            },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            {
              icon = " ",
              key = "g",
              desc = "Find Text",
              action = ":lua Snacks.dashboard.pick('live_grep')",
            },
            {
              icon = " ",
              key = "r",
              desc = "Recent Files",
              action = ":lua Snacks.dashboard.pick('oldfiles')",
            },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            -- using mini sessions
            -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = ":Lazy",
              enabled = package.loaded.lazy ~= nil,
            },
            { icon = "☭ ", key = "m", desc = "Mason", action = ":Mason" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          { section = "header" },
          {
            pane = 2,
            -- chafa_section,
            {
              section = "keys",
              title = "Commands",
              gap = 1,
              padding = 1,
            },
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
        },
      },
    },
  },
}
