local icons = require("builtin.ui.icons")

local options = {
  -- numberline
  number = true,
  numberwidth = 4,
  relativenumber = true,

  -- editor
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  smartcase = true,
  smartindent = true,
  cursorline = true,
  -- guicursor = "n-v-i-c:block-Cursor",
  clipboard = "unnamedplus",
  wrap = false,
  cmdheight = 0,
  -- colorcolumn = "140",

  -- statusline
  showmode = true,
  showtabline = 2,

  -- window
  splitbelow = true,
  splitright = true,
  scrolloff = 8,
  sidescrolloff = 8,
  termguicolors = true,

  -- other
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  ignorecase = true,
  spell = true,
  spelllang = "en_us,en_gb,la",
  spelloptions = "camel",

  --search
  hlsearch = true,
  incsearch = true,
}

-- update options
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- diagnostics
local default_diagnostic_config = {
  signs = {
    active = true,
    values = {
      { name = "DiagnosticSignError", text = icons.diagnostics.Error },
      { name = "DiagnosticSignWarn",  text = icons.diagnostics.Warning },
      { name = "DiagnosticSignHint",  text = icons.diagnostics.Hint },
      { name = "DiagnosticSignInfo",  text = icons.diagnostics.Information },
    },
  },
  virtual_text = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}

-- vim.diagnostic.config(default_diagnostic_config)

-- diagnostics icons
vim.fn.sign_define("DiagnosticSignError", { text = icons.diagnostics.BoldError, texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

-- neovide options
if vim.g.neovide then
  vim.o.guifont = "MonaspiceNe NF:h9" -- text below applies for VimScript

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.9
  vim.g.transparency = 0.9
  vim.g.neovide_background_color = "#1e1e2e" .. alpha()
end
