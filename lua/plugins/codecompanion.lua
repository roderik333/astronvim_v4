return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		adapters = {
			mistral = function()
				return require("codecompanion.adapters").extend("mistral", {
					env = {
						url = "https://api.mistral.ai",
						--api_key = "gIwCh1rf5poEVc6g0ZN0Sa07XXJHPrOX",
						api_key = "hONNrjQu5FvKeETWuD4PkWqL5YCO4zFj",
					},
					schema = {
						model = {
							-- default = "mistral-large-latest",
							default = "codestral-latest",
						},
						max_tokens = {
							default = 4096,
						},
					},
				})
			end,
			ollama = function()
				return require("codecompanion.adapters").extend("ollama", {
					schema = {
						model = {
							default = "llama3.1:latest",
						},
						num_ctx = {
							default = 20000,
						},
					},
				})
			end,
		},
		strategies = {
			chat = {
				adapter = "mistral",
			},
			inline = {
				adapter = "mistral",
			},
			cmd = {
				adapter = "mistral",
			},
		},
	},
}
