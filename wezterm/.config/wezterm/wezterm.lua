local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Dern config
config.enable_wayland = false
-- Window Rules
config.initial_cols = 114
config.animation_fps = 170
config.automatically_reload_config = true
config.window_decorations = "NONE"
config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = "0.5cell",
	bottom = "0",
}
config.window_close_confirmation = "NeverPrompt"

-- Cursor
config.cursor_blink_rate = 400
config.default_cursor_style = "BlinkingUnderline"
config.hide_mouse_cursor_when_typing = true

-- Theme
config.color_scheme = "catppuccin-macchiato"

-- Font
config.font = wezterm.font("Maple Mono NF SemiBold")
config.font_size = 14

-- Binds

config.keys = {
	-- Copy selected text to system clipboard
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	}, -- paste from the clipboard
	{ key = "V", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },

	-- paste from the primary selection
	{ key = "V", mods = "CTRL", action = wezterm.action.PasteFrom("PrimarySelection") },
}

return config
