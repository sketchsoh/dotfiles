local colors = {
  red = "#C34043",
  grey = "#363646",
  black = "#1F1F28",
  white = "#DCD7BA",
  light_green = "#76946A",
  orange = "#FFA066",
  green = "#98BB6C",
  blue = "#2D4F67",
  normal = "#E6C384",
  bg = "#16161D",
}

local theme = {
  normal = {
    a = { fg = colors.black, bg = colors.normal },
    b = { fg = colors.white, bg = colors.blue },
    c = { fg = colors.white, bg = colors.bg },
    z = { fg = colors.black, bg = colors.normal },
  },
  insert = { a = { fg = colors.black, bg = colors.light_green } },
  visual = { a = { fg = colors.black, bg = colors.orange } },
  replace = { a = { fg = colors.black, bg = colors.green } },
}

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = theme,
      component_separators = { left = "╲", right = "╱" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { { "mode", fmt = function(str) return str:sub(1, 1) end } },
      lualine_b = {
        "branch",
        "diff",
        {
          "diagnostics",
          source = { "nvim" },
          sections = { "error" },
        },
        {
          "diagnostics",
          source = { "nvim" },
          sections = { "warn" },
        },
        {
          "%w",
          cond = function() return vim.wo.previewwindow end,
        },
        {
          "%r",
          cond = function() return vim.bo.readonly end,
        },
        {
          "%q",
          cond = function() return vim.bo.buftype == "quickfix" end,
        },
      },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "%p%%/%L" },
      lualine_z = { "%l:%c" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  },
}
