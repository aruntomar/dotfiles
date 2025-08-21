-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.enable_wayland = false
-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
-- config.color_scheme = "Solarized Light"

function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Tokyo Night"
	else
		-- return "Tokyo Night Day"
		return "Tokyo Night"
	end
end

-- config.color_scheme = scheme_for_appearance(get_appearance())
-- config.color_scheme = "Classic Light (base16)"
-- config.color_scheme = "Ayu Light (Gogh)"
-- config.color_scheme = "Atelier Lakeside Light (base16)"
-- config.color_scheme = "Horizon Bright (Gogh)"
-- config.color_scheme = "Summerfruit Light (base16)"
-- config.color_scheme = "Atelier Lakeside Light (base16)"

config.font = wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 12

-- Add this line to set DPI for 200% scaling on 4K screens
-- config.dpi = 192.0

-- and finally, return the configuration to wezterm
return config
