local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'darkmoss (base16)'
-- config.color_scheme = 'Arthur'
-- config.color_scheme = 'Afterglow'
config.font = wezterm.font "JetbrainsMono Nerd Font Mono"
config.font_size = 17

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.80

return config
