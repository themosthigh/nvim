local wk = require("which-key")

wk.add({
	{
		"gd",
		vim.lsp.buf.definition,
		"go to definition",
	},
})
