return {
  ensure_installed = {
    -- formatters
    "prettierd",
    "eslint_d",
    "eslint-lsp",
    "stylua",
    "gofumpt",
    "golines",
    "goimports-reviser",
    -- "ktlint",
    -- "black",
    "lua_ls",
    "css-lsp",
    "vtsls",
    "emmet-language-server",
    "tailwindcss-language-server",
    "intelephense",
    "zls"
  },

  servers = {
    "angularls",
    "astro",
    "buf_ls", -- protocol buffers
    "cssls",
    "gleam",
    "gopls",
    "intelephense",
    "java_language_server",
    "jsonls",
    "kotlin_language_server",
    "lua_ls",
    "prismals",
    "pyright",
    "rust_analyzer",
    "svelte",
    "sqlls",
    "taplo",  -- toml
    "vala_ls",
    "zls",    -- zig
    "nil_ls", -- nix
  },

  markup_files = {
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
    "heex",
  }
}
