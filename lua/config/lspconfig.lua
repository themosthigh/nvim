local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

local servers = require("config.mason-lsp").servers
local markup_files = require("config.mason-lsp").markup_files

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
    hint = { enable = true },
  })
end

local function organize_imports(command)
  local params = {
    command = command,
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf_request(0, "workspace/executeCommand", params)
end

lspconfig.emmet_language_server.setup({
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte", -- svelte has its own language server
    "vue",    -- same as vue
    "php",
    "astro",
    "heex",
    "buf",
  },
})

lspconfig.tailwindcss.setup({ filetypes = markup_files, })

lspconfig.unocss.setup({
  filetypes = markup_files,
  root_dir = lspconfig.util.root_pattern("uno.config.js", "uno.config.ts"),
})


lspconfig.eslint.setup({
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "astro" },
})

lspconfig.elixirls.setup({
  cmd = { "elixir-ls" },
})

require("lspconfig.configs").vtsls = require("vtsls").lspconfig -- set default server config, optional but recommended
lspconfig.vtsls.setup({
  settings = {
    typescript = {
      preferences = {
        includeCompletionsForModuleExports = true,
        includeCompletionsForImportStatements = true,
        importModuleSpecifier = "non-relative",
        importModuleSpecifierEnding = "js",

      },
    },
  },
  commands = {
    OrganizeImports = {
      function()
        organize_imports("source.organizeImports")
      end,
      description = "OrganizeImports"
    }
  },
})


lspconfig.volar.setup({
  init_options = {
    vue = {
      hybridMode = false,
    }
  }
})
