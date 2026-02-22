local markup_files = require("config.mason-lsp").markup_files

vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

-- Example for TypeScript/JavaScript
local function organize_imports_ts()
	local ft = vim.bo.filetype:gsub("react$", "")
	if not vim.tbl_contains({ "javascript", "typescript" }, ft) then
		return
	end
	vim.lsp.buf_request_sync(0, "workspace/executeCommand", {
		command = (ft .. ".organizeImports"),
		arguments = { vim.api.nvim_buf_get_name(0) },
	}, 3000)
end
vim.api.nvim_create_user_command("OrganizeImportsTS", organize_imports_ts, {})

vim.lsp.enable("unocss")
vim.lsp.config("unocss", {
	filetypes = markup_files,
})

vim.lsp.enable("postgres-language-server", {
	filetypes = { "sql" },
})



vim.api.nvim_set_keymap('n', '<leader>x', '', {
  noremap = true,
  callback = function()
    for _, client in ipairs(vim.lsp.get_clients()) do
      require("workspace-diagnostics").populate_workspace_diagnostics(client, 0)
    end
  end
})
