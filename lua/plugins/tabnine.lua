-- Build Tabnine Chat
-- After lazy install, and no errors..
--
-- $ cd ~/.local/share/nvim/lazy/tabnine-nvim/chat
-- $ sudo dnf install cargo
-- $ sudo dnf install glib2-devel
-- $ sudo dnf install pango-devel
-- $ sudo dnf install cairo-gobject-devel
-- $ sudo dnf install atk-devel
-- $ sudo dnf install javascriptcoregtk4.1-devel
-- $ sudo dnf install libsoup3-devel
-- $ sudo dnf install gtk3-devel
-- $ sudo dnf install webkit2gtk4.1-devel
-- $ cargo build --release
return {
	{
		"codota/tabnine-nvim",
		build = "./dl_binaries.sh",
		config = function()
			require("tabnine").setup({
				disable_auto_comment = true,
				accept_keymap = "<C-t>",
				dismiss_keymap = "<C-l>",
				debounce_ms = 800,
				suggestion_color = { gui = "#808080", cterm = 244 },
				exclude_filetypes = { "TelescopePrompt", "NvimTree" },
				log_file_path = "/tmp/tabnine.log", -- absolute path to Tabnine log file
			})
		end,
	},
}
