local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOFT_LEFT_ARROW = wezterm.nerdfonts.pl_right_soft_divider
-- local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
local SOFT_RIGHT_ARROW = wezterm.nerdfonts.pl_left_soft_divider
-- local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

local window_min = ' 󰖰 '
local window_max = ' 󰖯 '
local window_close = ' 󰅖 '

local config = {
	font_size = 17,
	-- font = wezterm.font("CodeNewRoman Nerd Font Mono", { weight = "Regular" }),
	-- font = wezterm.font("Hack Nerd Font Mono", { weight = "Regular" }),
	-- font = wezterm.font("Hack Nerd Font", { weight = "Regular" }),
	font = wezterm.font("Monaco Nerd Font", { weight = "Regular" }),
	-- font = wezterm.font("Maple Mono NF", { weight = "Regular" }),
	color_scheme_dirs = { 'C:/Users/Andromeda/.config/wezterm/color_schemes' },
	-- color_scheme = "Catppuccin Mocha",
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
	-- enable_tab_bar = false,
	-- tab_bar_at_bottom = true,
	-- show_tabs_in_tab_bar = false,
	-- show_tab_index_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	-- window_decorations = "RESIZE",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	integrated_title_button_alignment = "Right",

	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.99,
	text_background_opacity = 0.99,
	-- text_background_opacity = 1.,
	adjust_window_size_when_changing_font_size = false,
	-- win32_system_backdrop = 'Acrylic',
	
	tab_max_width = 50,
	
	window_padding = {
		left = 6, 
		right = 6,
		top = 6,
		bottom = 2,
	},

	inactive_pane_hsb = {
    	saturation = 0.9,
    	brightness = 0.8,
	},

	tab_bar_style = {
    	window_hide = window_min,
    	window_hide_hover = window_min,
    	window_maximize = window_max,
    	window_maximize_hover = window_max,
    	window_close = window_close,
    	window_close_hover = window_close,
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

		-- font = wezterm.font { family = 'Maple Mono NF', weight = 'Bold' },
		font_size = 12.0,
		active_titlebar_bg = '#282a36',
		inactive_titlebar_bg = '#282a36',
	},

	keys = {
        { key = "-", mods = "ALT",       action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        { key = "\\", mods = "ALT",       action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        { key = "z", mods = "ALT",       action="TogglePaneZoomState" },
        { key = "c", mods = "ALT",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
        { key = "h", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Right"}},
		{ key = 't', mods = 'ALT',       action=wezterm.action.SpawnTab 'DefaultDomain' },
        { key = "1", mods = "ALT",       action=wezterm.action{ActivateTab=0}},
        { key = "2", mods = "ALT",       action=wezterm.action{ActivateTab=1}},
        { key = "3", mods = "ALT",       action=wezterm.action{ActivateTab=2}},
        { key = "4", mods = "ALT",       action=wezterm.action{ActivateTab=3}},
        { key = "5", mods = "ALT",       action=wezterm.action{ActivateTab=4}},
        { key = "6", mods = "ALT",       action=wezterm.action{ActivateTab=5}},
        { key = "7", mods = "ALT",       action=wezterm.action{ActivateTab=6}},
        { key = "8", mods = "ALT",       action=wezterm.action{ActivateTab=7}},
        { key = "9", mods = "ALT",       action=wezterm.action{ActivateTab=8}},
        { key = "w", mods = "ALT", 		 action=wezterm.action{CloseCurrentTab={confirm=false}}},
        { key = "q", mods = "ALT",       action=wezterm.action{CloseCurrentPane={confirm=false}}},
        { key = "]", mods = "ALT",   action = wezterm.action.ActivateTabRelative(1) },
        { key = "[", mods = "ALT",   action = wezterm.action.ActivateTabRelative(-1) },
		{ key = ',', mods = 'ALT',   action = wezterm.action.MoveTabRelative(-1) },
		{ key = '.', mods = 'ALT',   action = wezterm.action.MoveTabRelative(1) },
    },
	default_prog = { 'pwsh.exe', '-l' }
}

for i = 1, 8 do
  -- CTRL+ALT + number to move to that position
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|ALT',
    action = wezterm.action.MoveTab(i - 1),
  })
end

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

function tab_title(tab_info)
  local title = tab_info.tab_title
  -- if the tab title is explicitly set, take that
  if title and #title > 0 then
    return title
  end
  -- Otherwise, use the title from the active pane
  -- in that tab
  return tab_info.active_pane.title
end

local function get_current_working_dir(tab)
	local current_dir = tab.active_pane.current_working_dir
	local HOME_DIR = string.format("file://%s", os.getenv("HOME"))

	return current_dir == HOME_DIR and "." or string.gsub(current_dir, "(.*[/\\])(.*)", "%2")
end

wezterm.on('format-tab-title',
function(tab, tabs, panes, config, hover, max_width)
    local l_edge_background = '#999'
    local r_edge_background = '#999'

	local l_edge_foreground = '#282a36'
	local r_edge_foreground = '#282a36'
    local background = '#999'
    local foreground = '#282a36'
	local l_gap = ''
	local r_gap = ' '
	local l_arr = ' '
	local r_arr = SOFT_RIGHT_ARROW
	local intensity_ = 'Normal'
	
	local right_id = 0
	local active_id = 0
	for i = 1, #tabs do
		right_id = tabs[i].tab_index
		if tabs[i].is_active then
			active_id = i
		end
	end
	
	if tab.tab_index+1 == active_id-1 then
		r_arr = ''
	end

	if tab.tab_index == right_id then
		r_arr = SOLID_RIGHT_ARROW
		r_edge_foreground = '999'
		r_edge_background = '#282a36'
	end

    if tab.is_active then
        background = '#fff'
        foreground = '#282a36'
		intensity_ = 'Bold'
		
		l_edge_foreground = '#999'
		r_edge_foreground = '#fff'
		l_edge_background = '#fff'

		l_arr = SOLID_RIGHT_ARROW
		r_arr = SOLID_RIGHT_ARROW

		l_gap = ' '
			
		if tab.tab_index == 0 then
			l_edge_foreground = '#fff'
			l_edge_background = '#fff'
			r_edge_background = '#999'
			l_arr = ' '
			l_gap = ''
			if tab.tab_index == right_id then
				r_edge_background = '#282a36'
			end
		end
    elseif hover then
        background = '#999'
        foreground = '#282a36'
    end

    -- ensure that the titles fit in the available space,
    -- and that we have room for the edges.
    -- local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
	local title = tab_title(tab)
	-- local title = string.format(" %s  %s ~ %s  ", "❯", get_current_working_dir(tab))

    return {
        { Foreground = { Color = l_edge_foreground } },
        { Background = { Color = l_edge_background } },
        -- { Text = SOLID_LEFT_ARROW },
        { Text = l_arr },
        { Background = { Color = background } },
        { Foreground = { Color = foreground } },
		{ Attribute = { Intensity = intensity_ } },
        { Text = '' .. l_gap .. title .. r_gap .. '' },
        { Background = { Color = r_edge_background } },
        { Foreground = { Color = r_edge_foreground } },
        { Text = r_arr },
    }
end)

return config
