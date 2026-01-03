local auto_format_pattern = {
  "*.ts",
  "*.go",
  "*.rs",
  "*.lua",
  --"*.tsx",
  "*.html",
  "*.svelte",
  "*.astro",
  "*.md",
}

-- Use a sub-list to run only the first available formatter
local pretty = {
  "prettierd",
  "prettier",
  stop_after_first = true,
  lsp_format = "format",
}

vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = "Re-enable autoformat-on-save",
})

return {
  -- Formatting
  "stevearc/conform.nvim",

  -- event = "VeryLazy",

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "lua_ls", lsp_format = "first" },
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
        sql = { "sqlfluff_custom", lsp_format = "first" },
        nix = { lsp_format = "first", "nixfmt" },

        php = { "phpcbf", "php-cs-fixer" },

      },
      format_on_save   = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
        disabled_filetypes = { "tsx", "jsx" },
      },

      formatters       = {
        sqlfluff_custom = {
          command = "sqlfluff",
          args = { "format", "--dialect=postgres", "-" },
          stdin = true,
          cwd = require("conform.util").root_file({ ".sqlfluff", "pyproject.toml" }),
        },
      }
    })
  end,
}
