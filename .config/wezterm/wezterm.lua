local wezterm = require("wezterm")

local config = wezterm.config_builder()

--config.color_scheme = 'Batman'
--config.font = wezterm.font 'JetBrainsMono'
config.font = wezterm.font_with_fallback({ "Iosevka Custom", "Noto Color Emoji" })
config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.font_size = 32.0
config.window_background_opacity = 1.0
config.color_scheme = 'Tokyo Night Storm'
config.color_schemes = {
	["Tokyo Night Storm"] = {
		background = '#001',
	}
}

return config
