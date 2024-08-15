local wezterm = require("wezterm")
local config = {
	color_scheme = "Gruvbox dark, medium (base16)",
	font_size = 12.0,
	enable_tab_bar = true,
	tab_bar_at_bottom = true,

	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},
}
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)

return config
