return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Language Servers
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			vim.lsp.enable("lua_ls")

      -- Diagnostic settings
			vim.diagnostic.config({
				virtual_text = {
					prefix = "󱈸", -- could also be "■", "▶", "●", "󱈸", "", ""
					spacing = 2,
				},
				signs = true, -- keeps the 'E' and 'W' in the sign column
				underline = true, -- highlights the problematic text
				update_in_insert = true,
        severity_sort = true,
			}) 

      -- Key Bindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
