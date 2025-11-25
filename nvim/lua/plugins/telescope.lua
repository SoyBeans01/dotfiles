-- plugins/telescope.lua:
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "v0.1.9",
		dependencies = { "nvim-lua/plenary.nvim" },
		--Config
		--	config = function()
		--		require('telescope').setup {
		--		pickers = {
		--			find_files ={
		--			theme = "ivy"
		--				}
		--			}
		--		}
		config = function()
			vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
			vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
