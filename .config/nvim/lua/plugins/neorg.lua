return {
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup {
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
      }
    end,
  },

  {
    "dhruvasagar/vim-table-mode",
    keys = {
      { "<leader>tmd", "<cmd>TableModeToggle<cr>", desc = "Toggle Table Mode" },
    },
  },
}
