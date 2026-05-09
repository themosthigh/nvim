return {
  {
    "themosthigh/darcula.nvim",
    -- dir = "~/Projects/foss/darcula.nvim",
  },

  { "sainnhe/gruvbox-material" },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
    end,
  },
}
