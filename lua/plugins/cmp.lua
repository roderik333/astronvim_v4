return { -- override nvim-cmp plugin
	"hrsh7th/nvim-cmp",
	-- override the options table that is used in the `require("cmp").setup()` call
	opts = function(_, opts)
		-- opts parameter is the default options table
		-- the function is lazy loaded so cmp is able to be required
		local cmp = require("cmp")
		-- modify the sources part of the options table
		opts.sources = cmp.config.sources({
			{ name = "nvim_lsp", priority = 1000 },
			{ name = "tabnine",  priority = 750 },
			{ name = "luasnip",  priority = 500 },
			{ name = "buffer",   priority = 250 },
			{ name = "path",     priority = 150 },
		})
	end,
}
