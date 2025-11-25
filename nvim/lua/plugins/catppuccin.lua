return {
	-- local mocha = require("catppuccin.palettes").get_palette "mocha"
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				float = {
					transparent = true, -- enable transparent floating windows
				},
				auto_integration = true,
			})
			vim.cmd.colorscheme("catppuccin-mocha")
			--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			--	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		end,
	},
}
