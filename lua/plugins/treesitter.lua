return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "markdown",
      "markdown_inline",
      "regex",
      "bash",
      "c",
      "javascript",
      "json",
      "lua",
      "python",
      "typescript",
      "tsx",
      "css",
      "rust",
      "yaml",
      "html",
      "htmldjango"
    },
  },
  indent = { enable = true, disable = { "python" } },
}
