-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.winborder = "rounded"
vim.o.pumblend = 30

-- Fix for floating window border background
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
-- You might also need this for the documentation window border specifically
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { link = "Normal" })
