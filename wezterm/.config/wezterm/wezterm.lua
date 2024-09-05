local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Arthur"
config.font = wezterm.font("JetBrains Mono", { weight = "Light", stretch = "Normal", style = "Normal" })
config.font_size = 17

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 5,
	right = 2,
	top = 0,
	bottom = 0,
}

return config
