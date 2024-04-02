-- Customize Mason plugins

---@type LazySpec
return {
	-- use mason-lspconfig to configure LSP installations
	{
		"williamboman/mason-lspconfig.nvim",
		-- overrides `require("mason-lspconfig").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
				"lua_ls",
				"pylsp",
				server = {
					pylsp = {
						plugins = {
							ruff = {
								extendSelect = { "A", "B", "C4", "D", "I", "ERA", "PLR", "SIM", "TCH" },
								ignore = {
									"I001",
									"D101",
									"D102",
									"D103",
									"D107",
									"D202",
									"D400",
									"D401",
									"D406",
									"D407",
									"D412",
									"D417",
								},
								showFixes = true,
								lineLength = 119,
							},
						},
					},
					ruff_lsp = {
						resolved_capabilities = {
							hover = false,
						},
					},
				},
				-- add more arguments for adding more language servers
			})
		end,
	},
	-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
	{
		"jay-babu/mason-null-ls.nvim",
		-- overrides `require("mason-null-ls").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
				"prettier",
				"stylua",
				-- add more arguments for adding more null-ls sources
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		-- overrides `require("mason-nvim-dap").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
				"python",
				-- add more arguments for adding more debuggers
			})
		end,
	},
}
