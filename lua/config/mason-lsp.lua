return {
	ensure_installed = {
		-- formatters
		"prettierd",
		"eslint_d",
		"stylua",
		"gofumpt",
		"golines",
		"goimports-reviser",
		"typescript-language-server",
	},

	servers = {
		-- "angularls",
		-- "astro",
		-- "buf_ls", -- protocol buffers
		"cssls",
		"emmet_ls",
		-- "gleam",
		"gopls",
		"intelephense",
		-- "java_language_server",
		"jsonls",
		-- "kotlin_language_server",
		-- "lua_ls",
		"prismals",
		"pyright",
		"rust_analyzer",
		"svelte",
		-- "sqlls",
		"taplo", -- toml
		-- "vala_ls",
		"zls", -- zig
		-- "nil_ls", -- nix
		-- "vuels",  -- vue
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
	},
}
