local wezterm = require("wezterm")
return {
	font = wezterm.font("Iosevka"),
	font_size = 14,
	color_scheme = "tokyonight-storm",
	allow_square_glyphs_to_overflow_width = "Always",
	-- window_decorations = "NONE",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 3,
		right = 3,
		top = 3,
		bottom = 0,
	},
	window_close_confirmation = "NeverPrompt",
	audible_bell = "Disabled",
	leader = { key = "Space", mods = "CTRL" },
	keys = {
		{
			key = "v",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "h",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{ key = "n", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
		{
			key = "c",
			mods = "LEADER",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
		{
			key = "r",
			mods = "CTRL|SHIFT",
			action = wezterm.action.RotatePanes("Clockwise"),
		},
		-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
		-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
		{
			key = "a",
			mods = "LEADER|CTRL",
			action = wezterm.action.SendString("\x01"),
		},
		{
			key = "r",
			mods = "LEADER",
			action = wezterm.action.ReloadConfiguration,
		},
		{ key = "H", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 2 } }) },
		{ key = "J", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 2 } }) },
		{ key = "K", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 2 } }) },
		{ key = "L", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 2 } }) },
		{ key = "t", mods = "LEADER", action = wezterm.action("ShowTabNavigator") },

		{ key = "8", mods = "CTRL|SHIFT", action = wezterm.action.PaneSelect },
		-- activate pane selection mode with numeric labels
		{
			key = "9",
			mods = "CTRL",
			action = wezterm.action.PaneSelect({
				alphabet = "1234567890",
			}),
		},
		-- show the pane selection mode, but have it swap the active and selected panes
		{
			key = "0",
			mods = "CTRL",
			action = wezterm.action.PaneSelect({
				mode = "SwapWithActive",
			}),
		},
		{ key = "l", mods = "ALT", action = wezterm.action.ShowLauncher },
	},
	-- Pane Resize

	colors = {
		tab_bar = {
			-- The color of the strip that goes along the top of the window
			-- (does not apply when fancy tab bar is in use)
			background = "#0b0022",

			-- The active tab is the one that has focus in the window
			active_tab = {
				-- The color of the background area for the tab
				bg_color = "#2b2042",
				-- The color of the text for the tab
				fg_color = "#c0c0c0",

				-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
				-- label shown for this tab.
				-- The default is "Normal"
				intensity = "Normal",

				-- Specify whether you want "None", "Single" or "Double" underline for
				-- label shown for this tab.
				-- The default is "None"
				underline = "None",

				-- Specify whether you want the text to be italic (true) or not (false)
				-- for this tab.  The default is false.
				italic = false,

				-- Specify whether you want the text to be rendered with strikethrough (true)
				-- or not for this tab.  The default is false.
				strikethrough = false,
			},

			-- Inactive tabs are the tabs that do not have focus
			inactive_tab = {
				bg_color = "#1b1032",
				fg_color = "#808080",

				-- The same options that were listed under the `active_tab` section above
				-- can also be used for `inactive_tab`.
			},

			-- You can configure some alternate styling when the mouse pointer
			-- moves over inactive tabs
			inactive_tab_hover = {
				bg_color = "#3b3052",
				fg_color = "#909090",
				italic = true,

				-- The same options that were listed under the `active_tab` section above
				-- can also be used for `inactive_tab_hover`.
			},

			-- The new tab button that let you create new tabs
			new_tab = {
				bg_color = "#1b1032",
				fg_color = "#808080",

				-- The same options that were listed under the `active_tab` section above
				-- can also be used for `new_tab`.
			},

			-- You can configure some alternate styling when the mouse pointer
			-- moves over the new tab button
			new_tab_hover = {
				bg_color = "#3b3052",
				fg_color = "#909090",
				italic = true,

				-- The same options that were listed under the `active_tab` section above
				-- can also be used for `new_tab_hover`.
			},
		},
	},
}
