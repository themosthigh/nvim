return {
  { -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    lazy = false,
    build = ":TSUpdate",
    main = "nvim-treesitter",
    opts = {
      sync_install = false,
      ignore_install = {},
      modules = {},
      auto_install = true,
      indent = { enable = true },
      highlight = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    },

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
