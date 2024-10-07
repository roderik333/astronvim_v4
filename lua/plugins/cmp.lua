return { -- override nvim-cmp plugin
	"hrsh7th/nvim-cmp",
	"onsails/lspkind.nvim",
	-- override the options table that is used in the `require("cmp").setup()` call
	opts = function(_, opts)
		-- opts parameter is the default options table
		-- the function is lazy loaded so cmp is able to be required
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		-- opts.mapping["<C-j>"] = cmp.mapping.select_next_item()
		-- opts.mapping["<C-k>"] = cmp.mapping.select_prev_item()
		-- modify the sources part of the options table
		opts.sources = cmp.config.sources({
			{ name = "cmp_tabnine", priority = 1000 },
			{ name = "nvim_lsp",    priority = 750 },
			{ name = "luasnip",     priority = 500 },
			{ name = "buffer",      priority = 250 },
			{ name = "path",        priority = 150 },
		})

		opts.format = lspkind.cmp_format({
			with_text = true,
			menu = {
				luasnip = "[snip]",
				nvim_lsp = "[LSP]",
				dictionary = "[dict]",
				path = "[path]",
				tags = "[tags]",
				buffer = "[buf]",
			},
		})
	end,
}
