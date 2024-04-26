-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		-- Configure core features of AstroNvim
		features = {
			large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
			autopairs = true,                              -- enable autopairs at start
			cmp = true,                                    -- enable completion at start
			diagnostics_mode = 2,                          -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
			highlighturl = true,                           -- highlight URLs at start
			notifications = true,                          -- enable notifications at start
		},
		-- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
		diagnostics = {
			virtual_text = false,
			underline = true,
		},
		-- vim options can be configured here
		options = {
			opt = {              -- vim.opt.<key>
				relativenumber = true, -- sets vim.opt.relativenumber
				number = true,     -- sets vim.opt.number
				spell = false,     -- sets vim.opt.spell
				signcolumn = "yes", -- sets vim.opt.signcolumn to auto
				wrap = false,      -- sets vim.opt.wrap
			},
			g = {                -- vim.g.<key>
				-- configure global vim variables (vim.g)
				-- NOTE: `mapLeader` and `maplocalLeader` must be set in the AstroNvim opts or before `lazy.setup`
				-- This can be found in the `lua/lazy_setup.lua` file
			},
		},
		-- Mappings can be configured through AstroCore as well.
		-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
		mappings = {
			-- first key is the mode
			n = {
				-- second key is the lefthand side of the map

				-- navigate buffer tabs with `H` and `L`
				-- L = {
				--   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
				--   desc = "Next buffer",
				-- },
				-- H = {
				--   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
				--   desc = "Previous buffer",
				-- },

				-- mappings seen under group name "Buffer"
				["."] = { ":" },
				["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
				["<Leader>bD"] = {
					function()
						require("astroui.status.heirline").buffer_picker(function(bufnr)
							require("astrocore.buffer").close(bufnr)
						end)
					end,
					desc = "Pick to close",
				},
				-- tables with just a `desc` key will be registered with which-key if it's installed
				-- this is useful for naming menus
				["<Leader>b"] = { desc = "Buffers" },
				["<Leader><space>"] = {
					function()
						require("telescope.builtin").git_files()
					end,
					desc = "Find files",
				},
				["ga"] = {
					function()
						vim.lsp.buf.code_action()
					end,
					desc = "Code Actions",
				},
				["<Leader>e"] = { "<cmd>Neotree float<cr>", desc = "Toggle Explorer" },
				["<Leader>q"] = {
					function()
						require("astrocore.buffer").close()
					end,
					desc = "Close buffer",
				},
				["<Leader>U"] = { "<cmd>lua require('undotree').toggle()<cr>", desc = "Toggle undotree" },
				["<Leader>-"] = { "<cmd>Oil<cr>", desc = "Open parent directory" },
				["<Leader>lk"] = { "<cmd>NoiceDismiss<cr>", desc = "Dismiss notification" },
				-- quick save
				-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
				-- COPILOTCHAT
				-- ["<Leader>c"] = false, -- remove the close buffer command
				-- ["<Leader>m"] = { desc = "CopilotChat" },
				["<Leader>mc"] = { ":CopilotChat ", desc = "CopilotChat - Chat with Copilot" },
				["<Leader>mcb"] = { ":CopilotChatBuffer ", desc = "CopilotChat - Chat with current buffer" },
				["<Leader>mce"] = { "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
				["<Leader>mct"] = { "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
				["<Leader>mcT"] = { "<cmd>CopilotChatVsplitToggle<cr>", desc = "CopilotChat - Toggle Vsplit" },
				["<Leader>mcv"] = { ":CopilotChatVisual ", desc = "CopilotChat - Open in vertical split" },
				["<Leader>mcx"] = { ":CopilotChatInPlace<cr>", desc = "CopilotChat - Run in-place code" },
				["<Leader>mcf"] = { "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - Fix diagnostic" },
				["<Leader>mcr"] = {
					"<cmd>CopilotChatReset<cr>",
					desc = "CopilotChat - Reset chat history and clear buffer",
				},

				["<Leader>x"] = { desc = "Trouble(dev branch)" },
				["<Leader>xx"] = { "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
				["<Leader>xX"] = {
					"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
					desc = "Buffer Diagnostics (Trouble)",
				},
				["<Leader>xs"] = { "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
				["<Leader>xl"] = {
					"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
					desc = "LSP Definitions / references / ... (Trouble)",
				},
				["<Leader>xL"] = { "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
				["<Leader>xQ"] = { "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
			},
			t = {
				-- setting a mapping to false will disable it
				-- ["<esc>"] = false,
			},
		},
	},
}
