local icons = require("builtin.ui.icons")

return {
  -- {
  -- lsp progress
  -- "arkav/lualine-lsp-progress",
  -- },
  {
    -- Lualine
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    config = function()
      -- LSP clients attached to buffer
      local clients_lsp = function()
        local bufnr = vim.api.nvim_get_current_buf()

        local clients = vim.lsp.get_clients(bufnr)

        if next(clients) == nil then
          return ""
        end

        local c = {}
        for _, client in pairs(clients) do
          table.insert(c, client.name)
        end
        return "\u{f085} " .. table.concat(c, " | ")
      end

      local function macro_recording()
        local recording_register = vim.fn.reg_recording()
        if recording_register == "" then
          return ""
        else
          return "Recording @" .. recording_register
        end
      end

      local config = {
        options = {
          theme = "auto",
          icons_enabled = true,
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = false,
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
          component_separators = icons.ui.LineMiddle,
          -- section_separators = { left = icons.ui.CircleDividerRight, right = icons.ui.CircleDividerLeft },
          -- section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { { "filename", file_status = true, path = 1 } },
          lualine_x = { macro_recording, "filetype" },
          lualine_y = { "diagnostics", clients_lsp },
          lualine_z = { "location", "progress" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      }

      -- local lsp_progress = require("plugins.lualine.lsp-progress")
      -- table.insert(config.sections.lualine_x, lsp_progress.component)

      require("lualine").setup(config)
    end,
  },
}
