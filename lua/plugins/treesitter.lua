local my_languages = require("config.my-languages")


vim.api.nvim_create_autocmd('FileType', {
  pattern = my_languages.langs,
  callback = function()
    vim.treesitter.start()
  end,
})

return {
  { -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install(my_languages.langs)
    end

  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({
        enable = true,
        mode = "cursor",
        zindex = 20,
        trim_sope = "outer",
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "css",
      "scss",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "astro",
    },
    config = function()
      -- require("nvim-ts-autotag").setup()
    end,
  },
}
