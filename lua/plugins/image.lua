return {
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    rocks = {
      hererocks = true,   -- recommended if you do not have global installation of Lua 5.1.
    },
  }
}
