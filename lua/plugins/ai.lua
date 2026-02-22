return {
	-- AI Completions
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				disable_keymaps = false,
				disable_inline_comepletion = false,
				keymaps = {
					accept_suggestion = "<Tab><Tab>",
				},
			})
		end,
	},
}
