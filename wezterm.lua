local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

local window_min = ' 󰖰 '
local window_max = ' 󰖯 '
local window_close = ' 󰅖 '

local config = {
	font_size = 15,
	-- font = wezterm.font("CodeNewRoman Nerd Font Mono", { weight = "Regular" }),
	-- font = wezterm.font("Monaco Nerd Font", { weight = "Regular" }),
	font = wezterm.font("Maple Mono NF", { weight = "Regular" }),
	color_scheme_dirs = { 'C:/Users/Andromeda/.config/wezterm/color_schemes' },
	color_scheme = "Catppuccin Mocha",
	color_scheme = "Dracula (Official)",
	-- color_scheme = "Sonokai (Gogh)",
	-- color_scheme = "Snazzy (Gogh)",
	-- color_scheme = "Snazzy (base16)",
	-- color_scheme = "Snazzy",
	-- color_scheme = "Andromeda",
	default_cursor_style = 'BlinkingBlock',
	cursor_blink_rate = 750,
	animation_fps = 1,

	use_fancy_tab_bar = false,
	-- tab_bar_at_bottom = true,
	-- show_tabs_in_tab_bar = false,
	-- show_tab_index_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	-- window_decorations = "RESIZE",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	show_new_tab_button_in_tab_bar = true,
	window_background_opacity = 0.98,
	text_background_opacity = 0.98,
	adjust_window_size_when_changing_font_size = false,
	-- win32_system_backdrop = 'Acrylic',
	
	window_padding = {
		left = 3, 
		right = 3,
		top = 3,
		bottom = 0,
	},

	tab_bar_style = {
    window_hide = window_min,
    window_hide_hover = window_min,
    window_maximize = window_max,
    window_maximize_hover = window_max,
    window_close = window_close,
    window_close_hover = window_close,
	-- },
	
	-- tab_bar_style = {
		-- active_tab_left = wezterm.format {
		-- 	{ Background = { Color = '#0b0022' } },
		-- 	{ Foreground = { Color = '#2b2042' } },
		-- 	{ Text = SOLID_LEFT_ARROW },
		-- 	-- { '' },
		-- },
		-- active_tab_right = wezterm.format {
		-- 	{ Background = { Color = '#0b0022' } },
		-- 	{ Foreground = { Color = '#2b2042' } },
		-- 	{ Text = SOLID_RIGHT_ARROW },
		-- },
		-- inactive_tab_left = wezterm.format {
		-- 	{ Background = { Color = '#0b0022' } },
		-- 	{ Foreground = { Color = '#1b1032' } },
		-- 	{ Text = SOLID_LEFT_ARROW },
		-- },
		-- inactive_tab_right = wezterm.format {
		-- 	{ Background = { Color = '#0b0022' } },
		-- 	{ Foreground = { Color = '#1b1032' } },
		-- 	{ Text = SOLID_RIGHT_ARROW },
		-- },
	},

	window_frame = {
		border_left_width = '1px',
		border_right_width = '1px',
		border_bottom_height = '1px',
		border_top_height = '1px',
		-- border_left_color = 'gray',
		-- border_right_color = 'gray',
		-- border_bottom_color = 'gray',	
		-- border_top_color = 'gray',
	},

	keys = {
        -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
        { key = "-", mods = "ALT",       action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        { key = "%", mods = "ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        { key = "z", mods = "ALT",       action="TogglePaneZoomState" },
        { key = "c", mods = "ALT",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
        { key = "h", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Right"}},
        -- { key = "H", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        -- { key = "J", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        -- { key = "K", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        -- { key = "L", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
		{ key = 'n', mods = 'ALT',       action=wezterm.action.SpawnTab 'DefaultDomain' },
        { key = "1", mods = "ALT",       action=wezterm.action{ActivateTab=0}},
        { key = "2", mods = "ALT",       action=wezterm.action{ActivateTab=1}},
        { key = "3", mods = "ALT",       action=wezterm.action{ActivateTab=2}},
        { key = "4", mods = "ALT",       action=wezterm.action{ActivateTab=3}},
        { key = "5", mods = "ALT",       action=wezterm.action{ActivateTab=4}},
        { key = "6", mods = "ALT",       action=wezterm.action{ActivateTab=5}},
        { key = "7", mods = "ALT",       action=wezterm.action{ActivateTab=6}},
        { key = "8", mods = "ALT",       action=wezterm.action{ActivateTab=7}},
        { key = "9", mods = "ALT",       action=wezterm.action{ActivateTab=8}},
        { key = "w", mods = "ALT", 		 action=wezterm.action{CloseCurrentTab={confirm=true}}},
        { key = "x", mods = "ALT",       action=wezterm.action{CloseCurrentPane={confirm=true}}},

        -- { key = "n", mods="SHIFT|CTRL",     action="ToggleFullScreen" },
        -- { key = "v",   mods="SHIFT|CTRL",   action=wezterm.action.PasteFrom 'Clipboard'},


        --------------------------------------------------
        -- custom config ---------------------------------
        --------------------------------------------------
        -- select window
        -- paste shift+insert
        -- { key="Insert",   mods="SHIFT",     action=wezterm.action.PasteFrom 'Clipboard'},
        -- switch
        -- { key = "]", mods = "LEADER",   action = act.ActivateTabRelative(1) },
        -- { key = "[", mods = "LEADER",   action = act.ActivateTabRelative(-1) },
        -- rename window
        -- { key = ",", mods = "LEADER",       action=act{SendString='[Console]::Title = "\x02"'}},
             -- rotate panes
        -- {
        --     mods = "LEADER",
        --     key = "Space",
        --     action = wezterm.action.RotatePanes "Clockwise"
        -- },
        -- -- show the pane selection mode, but have it swap the active and selected panes
        -- -- { mods = 'LEADER', key = '0', action = wezterm.action.PaneSelect { mode = 'SwapWithActive', }, },
        -- { mods = 'LEADER', key = '0',   action = wezterm.action.PaneSelect },
        -- { mods = "LEADER", key = "[",   action = act.ActivateCopyMode },
        -- { mods = "LEADER", key = "]",   action = act.PasteFrom 'Clipboard' },
        -- { mods = "LEADER", key = ":",   action = act.ActivateCommandPalette },
        -- { mods = "LEADER", key = "Tab", action = act.ActivateLastTab },
        -- { mods = "LEADER", key = "/",   action = act.Search 'CurrentSelectionOrEmptyString' },
        -- -- Show the launcher in fuzzy selection mode and have it list all workspaces
        -- -- and allow activating one.
        -- { mods = 'LEADER', key = 'w',   action = wezterm.action.ShowTabNavigator },
        -- { mods = 'LEADER', key = 's',   action = act.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES', },
        -- },
    },
	default_prog = { 'pwsh.exe', '-l' }
}

config.set_environment_variables = {}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  -- Use OSC 7 as per the above example
  config.set_environment_variables['prompt'] =
    '$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m '
  -- use a more ls-like output format for dir
  config.set_environment_variables['DIRCMD'] = '/d'
  -- And inject clink into the command prompt
  -- config.default_prog =
  --   { 'cmd.exe', '/s', '/k', 'c:/clink/clink_x64.exe', 'inject', '-q' }
end
-- require("key-bind-win")

wezterm.on('update-right-status', function(window, pane)
    local user_vars = pane:get_user_vars()

    local icon = user_vars.window_prefix
    if not icon or icon == '' then
        -- fallback for the icon,
        -- icon = ''
		icon = ''
    end

    window:set_left_status(wezterm.format {
        -- { Background = { Color = '#333333' } },
        { Text = ' ' .. wezterm.pad_right(icon, 3) },
    })

    -- local title = pane:get_title()
    local date = ' ' .. wezterm.strftime('%H:%M %d-%m-%Y') .. ' '

    -- figure out a way to center it
    window:set_right_status(wezterm.format {
        -- { Background = { Color = '#555555' } },
        -- { Text = ' ' .. title .. ' ' },
        -- { Background = { Color = '#333333' } },
        -- { Text = date },
    })
end)

-- wezterm.on('format-tab-title', function (tab, _, _, _, _)
--     -- i do not like how i can basically hide tabs if i zoom in
--     local user_vars = pane:get_user_vars()
--     local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
--     local is_zoomed = ''
--     if tab.active_pane.is_zoomed then
--         is_zoomed = 'z'
--     end
--
--     -- return {
--     --     -- { Text = ' ' .. tab.tab_index + 1 .. is_zoomed .. user_vars.window_prefix .. ' ' },
--     --     { Text = title },
--     -- }
-- 	return {
--         { Background = { Color = edge_background } },
--         { Foreground = { Color = edge_foreground } },
--         { Text = SOLID_LEFT_ARROW },
--         { Background = { Color = background } },
--         { Foreground = { Color = foreground } },
--         { Text = title },
--         { Text = ' ' .. is_zoomed .. user_vars.window_prefix .. ' ' },
--         { Background = { Color = edge_background } },
--         { Foreground = { Color = edge_foreground } },
--         { Text = SOLID_RIGHT_ARROW },
--     }
--
-- end)

wezterm.on(
'format-tab-title',
function(tab, tabs, panes, config, hover, max_width)
    -- local edge_background = '#0b0022'
    -- local edge_background = '#3b3052'
    local edge_background = '#282a36'
    local background = '#2f333f'
    -- local background = '#282a36'
    local foreground = '#808080'

    if tab.is_active then
        background = '#bd93f9'
        -- background = '#3b3052'
        foreground = '#282a36'
        -- foreground = '#909090'
    elseif hover then
        background = '#282a36'
        foreground = '#f8f8f2'
    end

    local edge_foreground = background

    -- ensure that the titles fit in the available space,
    -- and that we have room for the edges.
    local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
    -- local title = wezterm.truncate_right(pane:get_user_vars().window_prefix, max_width - 2)

    return {
        { Background = { Color = edge_foreground } },
        { Foreground = { Color = edge_background } },
        -- { Text = SOLID_LEFT_ARROW },
        { Text = SOLID_RIGHT_ARROW },
        { Background = { Color = background } },
        { Foreground = { Color = foreground } },
        -- { Text = ' ' .. title .. ' ' },
        { Text = ' ' .. title .. ' ' },
        { Background = { Color = edge_background } },
        { Foreground = { Color = edge_foreground } },
        { Text = SOLID_RIGHT_ARROW },
    }
end)


return config
