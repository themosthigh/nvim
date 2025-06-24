-- local auto_format_pattern = { "*.ts", "*.go", "*.rs", "*.lua", "*.tsx", "*.html", "*.svelte", "*.astro", "*.md" }

-- Use a sub-list to run only the first available formatter
local pretty = {
  "prettierd",
  "prettier",
  stop_after_first = true,
  lsp_format = "format"
}

return {
  -- Formatting
  "stevearc/conform.nvim",

  -- event = "VeryLazy",

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "luaformatter", lsp_format = "first" },
        javascript = pretty,
        javascriptreact = pretty,
        typescript = pretty,
        typescriptreact = pretty,

        json = pretty,
        jsonc = pretty,
        svelte = pretty,
        vue = pretty,
        astro = pretty,
        scss = pretty,
        css = pretty,
        html = pretty,
        markdown = pretty,

        go = { "gofumpt", "goimports-reviser", "golines" },
        rust = { "rustfmt" },
        cpp = { "clang-format" },
        python = { "black" },
        kotlin = { "ktlint" },
        proto = { "buf" },
        dart = { lsp_format = "first" },
        toml = { lsp_format = "first" },
        sql = { lsp_format = "first" },
        nix = { lsp_format = "first", "nixfmt" },

      },
      -- format_on_save = {
      --   -- These options will be passed to conform.format()
      --   timeout_ms = 500,
      --   lsp_format = "fallback",
      -- },
    })
  end,
}
