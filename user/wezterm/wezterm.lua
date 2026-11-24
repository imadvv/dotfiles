local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 15
config.color_scheme = "dank-theme"
config.use_fancy_tab_bar = true
config.window_background_opacity = 0.9
config.default_prog = { "/usr/bin/env", "fish" }
return config
