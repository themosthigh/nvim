vim.o.background = "dark" -- or "light" for light mode

-- Gruvbox Material specific presets
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "original"
vim.g.gruvbox_material_better_performance = 1


-- Use light gray theme for deleted sections
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "DiffDelete", { fg = "GRAY", bg = "NONE", ctermfg = 250, ctermbg = "NONE" })
  end,
})


-- local colorscheme = "darcula"
local colorscheme = "kanagawa"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark" -- or "light" for light mode
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
