local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function Name
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffers
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- resize between splits
keymap("n", "<A-h>", "<cmd>SmartResizeLeft<cr>", { desc = "Resize pane left" })
keymap("n", "<A-j>", "<cmd>SmartResizeDown<cr>", { desc = "Resize pane down" })
keymap("n", "<A-k>", "<cmd>SmartResizeUp<cr>", { desc = "Resize pane up" })
keymap("n", "<A-l>", "<cmd>SmartResizeRight<cr>", { desc = "Resize pane right" })
-- moving between splits
keymap("n", "<C-h>", "<cmd>SmartCursorMoveLeft<cr>", { desc = "Move Pane Left" })
keymap("n", "<C-j>", "<cmd>SmartCursorMoveDown<cr>", { desc = "Move Pane Down" })
keymap("n", "<C-k>", "<cmd>SmartCursorMoveUp<cr>", { desc = "Move Pane Up" })
keymap("n", "<C-l>", "<cmd>SmartCursorMoveRight<cr>", { desc = "Move Pane Right" })

-- Buffers
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- Insert
keymap("i", "jk", "<ESC>", opts)

-- Neorg
keymap("n", "<leader>Ni", "<cmd>Neorg index<cr>", { desc = "Neorg Index" })
keymap("n", "<leader>Nw", "<cmd>Neorg workspace<cr>", { desc = "Neorg Workspace" })
keymap("n", "<leader>Nj", "<cmd>Neorg journal<cr>", { desc = "Neorg Journal" })
keymap("n", "<leader>Nm", "<cmd>Neorg inject-metadata<cr>", { desc = "Neorg inject metadata" })
keymap("n", "<leader>Nn", "<cmd>Neorg keybind norg core.dirman.new.note<cr>", { desc = "Neorg new note" })
