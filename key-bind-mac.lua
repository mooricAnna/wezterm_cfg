local wezterm = require 'wezterm';
function keyBind()
    keys = { -- 清屏
    {
        key = 'k',
        mods = 'Meta',
        action = wezterm.action.Multiple {wezterm.action.ClearScrollback 'ScrollbackAndViewport',
                                          wezterm.action.SendKey {
            key = 'L',
            mods = 'CTRL'
        }}
    }, { -- 控制左右移动面板
        key = 'LeftArrow',
        mods = 'Meta',
        action = wezterm.action {
            ActivateTabRelative = -1
        }
    }, {
        key = 'RightArrow',
        mods = 'Meta',
        action = wezterm.action {
            ActivateTabRelative = 1
        }
    }, { -- 搜索
        key = 'f',
        mods = 'Meta',
        action = wezterm.action.Search {
            CaseInSensitiveString = '' -- 大小写不敏感
            -- CaseSensitiveString = ''-- 大小写敏感
        }
    }, { -- 关闭当前窗口
        key = 'w',
        mods = 'Meta',
        action = wezterm.action.CloseCurrentTab {
            confirm = true
        }
    }, { -- 展示启动器
        key = 'l',
        mods = 'Meta',
        action = wezterm.action.ShowLauncher
    }, { -- 新建窗口
        key = 'n',
        mods = 'Meta',
        action = wezterm.action.SpawnCommandInNewTab {
            label = 'Zsh-NewWindow',
            args = {'/bin/zsh', '-l'}
        }
    }, { -- 快速移动到行首行尾
        key = 'LeftArrow',
        mods = 'Meta',
        action = wezterm.action.SendKey {
            key = 'Home',
            mods = 'NONE'
        }
    }, {
        key = 'RightArrow',
        mods = 'Meta',
        action = wezterm.action.SendKey {
            key = 'End',
            mods = 'NONE'
        }
    }
}
    return keys
end
