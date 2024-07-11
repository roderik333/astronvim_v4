return {
	{
		"tzachar/cmp-tabnine",
		build = "./install.sh",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			local tabnine = require("cmp_tabnine.config")
			tabnine:setup({
				max_lines = 1000,
				max_num_results = 20,
				sort = true,
				run_on_every_keystroke = true,
				snippet_placeholder = "..",
				ignored_file_types = {
					-- default is not to ignore
					-- uncomment to ignore in lua:
					-- lua = true
				},
				show_prediction_strength = false,
				min_percent = 0,
			})
			-- local lspkind = require("lspkind")
			--
			-- local source_mapping = {
			-- 	buffer = "[Buffer]",
			-- 	nvim_lsp = "[LSP]",
			-- 	nvim_lua = "[Lua]",
			-- 	cmp_tabnine = "[TN]",
			-- 	path = "[Path]",
			-- }
		end,
	},
}
