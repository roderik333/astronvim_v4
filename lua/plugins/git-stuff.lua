return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup {
      current_line_blame = true,
    }
  end,

  vim.keymap.set("n", "<Leader>gp", ":Gitsigns preview_hunk<CR>", {}),
}
