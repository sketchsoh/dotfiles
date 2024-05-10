-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.html-css" },
  -- Note Taking
  { import = "astrocommunity.note-taking.neorg" },
  -- Recipes
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- Utility
  { import = "astrocommunity.utility.noice-nvim" },
  -- Bars
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  -- Color
  { import = "astrocommunity.color.headlines-nvim" },
  { import = "astrocommunity.color.tint-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- Editing
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  { import = "astrocommunity.editing-support.wildfire-nvim" },
  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  -- Search
  { import = "astrocommunity.search.sad-nvim" },
  -- Syntax
  { import = "astrocommunity.syntax.hlargs-nvim" },
  -- AI
  { import = "astrocommunity.completion.codeium-vim" },
}
