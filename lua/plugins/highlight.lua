local icons = require("builtin.ui.icons")

return {
  -- FIXME this is a todo
  {
    "folke/todo-comments.nvim",
    Dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter",
    opts = {
      signs = true,
      keywords = {
        FIX = {
          icon = icons.ui.Bug,                        -- icon used for the sign, and in search results
          color = "error",                            -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = icons.ui.Check, color = "info" },
        HACK = { icon = icons.ui.Fire, color = "warning" },
        WARN = { icon = icons.diagnostics.BoldWarning, color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    },
  },
}
