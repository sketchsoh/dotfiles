return {

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
      integrations = {
        coc_nvim = true,
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      log_level = vim.log.levels.TRACE,
      formatters = {
        csharpier = {
          args = { "--write-stdout", "--no-cache", "$FILENAME" },
        },
      },
    },
  },
}
