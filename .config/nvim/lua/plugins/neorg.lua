return {
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    keys = {
      { "<leader>ni", "<cmd>Neorg index<cr>", desc = "Neorg Index" },
      { "<leader>nw", "<cmd>Neorg workspace<cr>", desc = "Neorg Workspace" },
      { "<leader>nj", "<cmd>Neorg journal<cr>", desc = "Neorg Journal" },
      { "<leader>nm", "<cmd>Neorg inject-metadata<cr>", desc = "Neorg inject metadata" },
      { "<leader>nn", "<cmd>Neorg keybind norg core.dirman.new.note<cr>", desc = "Neorg new note" },
    },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              index = "index.norg",
              default_workspace = "notes",
            },
          },
          ["core.integrations.treesitter"] = {},
          ["core.autocommands"] = {},
          ["core.mode"] = {},
          ["core.highlights"] = {},
          ["core.ui"] = {},
          ["core.storage"] = {},
        },
      })
    end,
  },

  {
    "dhruvasagar/vim-table-mode",
    keys = {
      { "<leader>tmd", "<cmd>TableModeToggle<cr>", desc = "Toggle Table Mode" },
    },
  },
}
