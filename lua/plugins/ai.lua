-- return {
--   {
--     "monkoose/neocodeium",
--     event = "VeryLazy",
--     config = function()
--       local neocodeium = require("neocodeium")
--       neocodeium.setup()
--       vim.keymap.set("i", "<A-f>", neocodeium.accept)
--       vim.keymap.set("i", "<C-i>", neocodeium.accept)
--       vim.keymap.set("i", "<A-[>", function() neocodeium.cycle(-1) end)
--       vim.keymap.set("i", "<A-]>", neocodeium.cycle)
--       -- vim.keymap.set("i", "<A->", neocodeium.cancel)
--     end,
--   }
-- }


return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-i>"
      }
    })
  end,
}
