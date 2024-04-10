return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config = function()
    require("hlchunk").setup({
      indent = {
        enable = false,
      },
      blank = {
        enable = false,
      },
    })
  end,
}
