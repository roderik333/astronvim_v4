-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	group = vim.api.nvim_create_augroup("filetype_django", { clear = true }),
	desc = "Change filetype to htmldjango",
	callback = function()
		if vim.fn.expand("%:e") == "djhtml" then
			vim.bo.filetype = "htmldjango"
		end
	end,
})

vim.filetype.add({
	extension = {
		djhtml = "htmldjango",
	},
})
--
-- -- Ensure icons are refreshed when Telescope or Oil is opened
-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = { "TelescopePreviewerLoaded", "OilEnter" },
-- 	callback = function()
-- 		setup_djhtml_icon()
-- 	end,
-- })
