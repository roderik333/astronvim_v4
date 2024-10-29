return {
	{
		"stevearc/oil.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("oil").setup({
				default_file_explorer = true,
			})
			local function setup_djhtml_icon()
				local has_devicons, devicons = pcall(require, "nvim-web-devicons")
				if has_devicons then
					local html_icon, html_color = devicons.get_icon(".html", "html", { default = true })
					devicons.set_icon({
						djhtml = {
							icon = html_icon,
							color = "#e34c26",
							name = "HTMLDjango",
						},
					})
				end
			end
			setup_djhtml_icon()
		end,
		-- Keymap is defined in astrocore
	},
}
