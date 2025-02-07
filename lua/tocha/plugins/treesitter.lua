return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"prisma",
				"markdown",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"asm",
				"csv",
				"python",
				"regex",
				"rust",
				"sql",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-p>",
					node_incremental = "<C-p>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
