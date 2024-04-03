return {

  { "catppuccin/nvim", name = "catppuccin", opts = {
    transparent_background = true,
  }, priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
      transparent_background = true,
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
