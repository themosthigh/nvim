return {
	{
		"themosthigh/darcula.nvim",
		-- dir = "~/Projects/foss/darcula.nvim",
	},

	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				transparent = true,
			})
		end,
	},
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = { light = "latte", dark = "mocha" },
				transparent_background = false,
				show_end_of_buffer = false,
				term_colors = true,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				styles = {
					comments = { "italic" },
					keywords = { "italic" },
					functions = { "italic" },
					variables = { "italic" },
					strings = {},
					numbers = {},
					types = {},
					operators = {},
				},
			})
		end,
	},
}
