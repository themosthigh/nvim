-- Made with Gemini
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
  callback = function(args)
    -- 1. Only run on regular files (skips terminal, help, quickfix, etc.)
    if vim.bo[args.buf].buftype ~= "" then return end

    -- 2. Only run if the buffer has a valid language/filetype
    local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)

    -- 3. Only start if a parser and highlight queries are installed
    if lang and vim.treesitter.query.get(lang, "highlights") then
      vim.treesitter.start(args.buf)
    end
  end,
  desc = "Start Treesitter highlighting for regular files with installed parsers"
})


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
