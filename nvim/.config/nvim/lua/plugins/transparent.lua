return {
  { "xiyaowong/transparent.nvim" },
  {
    "S1M0N38/love2d.nvim",
    event = "VeryLazy",
    version = "2.*",
    opts = {},
    keys = {
      { "<leader>v", ft = "lua", desc = "LÖVE" },
      { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
      { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
    },
  },
  {
    "CRAG666/code_runner.nvim",
    config = true,
  },
  {
    "Civitasv/cmake-tools.nvim",
    config = function()
      require("cmake-tools").setup({})
    end,
  },
}
