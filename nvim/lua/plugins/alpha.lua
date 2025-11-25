return {
  "goolord/alpha-nvim",
	-- dependencies = { 'nvim-mini/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- local startify = require("alpha.themes.startify")
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- Set header
    dashboard.section.header.val = {
      [[ ┌─────────────────────────────────────────────────────────────────┐ ]],
      [[ │                     ,                                           │ ]],
      [[ │                     \`-._           __                          │ ]],
      [[ │                      \\  \-..____,.'  `.                        │ ]],
      [[ │                       :  )       :      :\                      │ ]],
      [[ │                        ;'        '   ;  | :                     │ ]],
      [[ │                        )..      .. .:.`.; :                     │ ]],
      [[ │                       /::...  .:::...   ` ;                     │ ]],
      [[ │                       `:o>   /\o_>        : `.                  │ ]],
      [[ │                      `-`.__ ;   __..--- /:.   \                 │ ]],
      [[ │                     ==== \_/   ;=====_.':.     ;                │ ]],
      [[ │                       ,/'`--'...`--....        ;                │ ]],
      [[ │                            ;                    ;               │ ]],
      [[ │                        . '                       ;              │ ]],
      [[ │                      .'     ..     ,      .       ;             │ ]],
      [[ │                     :       ::..  /      ;::.     |             │ ]],
      [[ │                    /      `.;::.  |       ;:..    ;             │ ]],
      [[ │                   :         |:.   :       ;:.    ;              │ ]],
      [[ │                   :         ::     ;:..   |.    ;               │ ]],
      [[ │                    :       :;      :::....|     |               │ ]],
      [[ │                    /\     ,/ \      ;:::::;     ;               │ ]],
      [[ │                  .:. \:..|    :     ; '.--|     ;               │ ]],
      [[ │                 ::.  :''  `-.,,;     ;'   ;     ;               │ ]],
      [[ │              .-'. _.'\      / `;      \,__:      \              │ ]],
      [[ │              `---'    `----'   ;      /    \,.,,,/              │ ]],
      [[ │                                 `----`                          │ ]],
      [[ └─────────────────────────────────────────────────────────────────┘ ]],
      [[                              Neovim                                 ]],

    }

		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		-- startify.file_icons.provider = "devicons"
		--  require("alpha").setup(
		--   startify.config
		--  )

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰈞   Find file", ":Telescope find_files <CR>"),
			dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("q", "󰩈   Quit NVIM", ":qa<CR>"),
		}

    dashboard.section.footer.val = {
      [[ Welcome back Sawyer ]]
    }

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}
