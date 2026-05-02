-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                          Keybinds                           ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Launch Applications
hl.bind(mainMod, "SPACE", "exec", launcher)                        -- Open application launcher
hl.bind(mainMod, "A", "exec", app_drawer)                          -- Open app drawer
hl.bind(mainMod, "RETURN", "exec", terminal)                       -- Open terminal
hl.bind(mainMod, "B", "exec", browser)                             -- Open web browser
hl.bind(mainMod, "F", "exec", filemanager)                         -- Open file browser
hl.bind(mainMod, "T", "exec", editor)                              -- Open text editor
hl.bind(mainMod, "E", "exec", "easyeffects")
-- hl.bind(mainMod,         "L",      "exec",         "localsend")

-- Window Controls
hl.bind(mainMod, "Q", "killactive")                                                                                  -- Kill active window
hl.bind(mainMod .. " SHIFT", "Q", "exec", "hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill")             -- Quit and kill all instances
hl.bind(mainMod .. " SHIFT", "F", "fullscreen", "0")                                                                 -- Fullscreen
hl.bind(mainMod .. " SHIFT", "M", "fullscreen", "1")                                                                 -- Maximize
hl.bind(mainMod .. " SHIFT", "T", "togglefloating")                                                                  -- Toggle floating
hl.bind(mainMod .. " SHIFT", "T", "resizeactive", "exact 960 600")                                                   -- Resize when floating
hl.bind(mainMod .. " ALT", "T", "workspaceopt", "allfloat")                                                          -- Toggle all windows floating
hl.bind(mainMod .. " SHIFT", "J", "togglesplit")                                                                     -- Toggle split

-- Arrow key focus / swap
hl.bind(mainMod, "left", "movefocus", "l")
hl.bind(mainMod, "right", "movefocus", "r")
hl.bind(mainMod, "up", "movefocus", "u")
hl.bind(mainMod, "down", "movefocus", "d")
hl.bind(mainMod .. " SHIFT", "left", "swapwindow", "l")
hl.bind(mainMod .. " SHIFT", "right", "swapwindow", "r")
hl.bind(mainMod .. " SHIFT", "up", "swapwindow", "u")
hl.bind(mainMod .. " SHIFT", "down", "swapwindow", "d")

-- Mouse window management
hl.bindm(mainMod, "mouse:272", "movewindow")
hl.bindm(mainMod .. " SHIFT", "mouse:272", "resizewindow")

-- Arrow key resize
hl.bind(mainMod .. " ALT", "right", "resizeactive", "100 0")
hl.bind(mainMod .. " ALT", "left", "resizeactive", "-100 0")
hl.bind(mainMod .. " ALT", "down", "resizeactive", "0 100")
hl.bind(mainMod .. " ALT", "up", "resizeactive", "0 -100")

-- Groups / cycling
hl.bind(mainMod, "G", "togglegroup")
-- hl.bind(mainMod,         "K",      "swapsplit")
hl.binde(mainMod, "Tab", "cyclenext")
hl.binde(mainMod, "Tab", "bringactivetotop")

-- Vim Key Navigation
hl.bind(mainMod, "H", "movefocus", "l")
hl.bind(mainMod, "L", "movefocus", "r")
hl.bind(mainMod, "K", "movefocus", "u")
hl.bind(mainMod, "J", "movefocus", "d")
hl.bind(mainMod .. " SHIFT", "H", "swapwindow", "l")
hl.bind(mainMod .. " SHIFT", "L", "swapwindow", "r")
hl.bind(mainMod .. " SHIFT", "K", "swapwindow", "u")
hl.bind(mainMod .. " SHIFT", "J", "swapwindow", "d")
hl.bind(mainMod .. " ALT", "L", "resizeactive", "100 0")
hl.bind(mainMod .. " ALT", "H", "resizeactive", "-100 0")
hl.bind(mainMod .. " ALT", "J", "resizeactive", "0 100")
hl.bind(mainMod .. " ALT", "K", "resizeactive", "0 -100")

-- Actions
hl.bind(mainMod .. " CTRL", "R", "exec", "hyprctl reload")                                                                        -- Reload config
hl.bind(mainMod, "W", "exec", "~/.config/hypr/scripts/kill-waybar.sh || ~/.config/hypr/scripts/start-waybar.sh")                  -- Toggle waybar
hl.bind(mainMod .. " SHIFT", "W", "exec", "pkill waybar && waybar")                                                               -- Reload waybar
hl.bind(mainMod .. " ALT", "W", "exec", "waypaper --random")                                                                      -- Random wallpaper
hl.bind(mainMod .. " CTRL", "W", "exec", "waypaper --restore &")                                                                  -- Restore wallpaper
hl.bind(mainMod, "PRINT", "exec", capturing)                                                                                      -- Screenshot
hl.bind(mainMod, "C", "exec", capturing)                                                                                          -- Screenshot

-- Workspace switching
hl.bind(mainMod, "1", "workspace", "1")
hl.bind(mainMod, "2", "workspace", "2")
hl.bind(mainMod, "3", "workspace", "3")
hl.bind(mainMod, "4", "workspace", "4")
hl.bind(mainMod, "5", "workspace", "5")
hl.bind(mainMod, "6", "workspace", "6")
hl.bind(mainMod, "7", "workspace", "7")
hl.bind(mainMod, "8", "workspace", "8")
hl.bind(mainMod, "9", "workspace", "9")
hl.bind(mainMod, "0", "workspace", "10")
hl.bind(mainMod, "S", "togglespecialworkspace")

-- Move window to workspace
hl.bind(mainMod .. " SHIFT", "1", "movetoworkspace", "1")
hl.bind(mainMod .. " SHIFT", "2", "movetoworkspace", "2")
hl.bind(mainMod .. " SHIFT", "3", "movetoworkspace", "3")
hl.bind(mainMod .. " SHIFT", "4", "movetoworkspace", "4")
hl.bind(mainMod .. " SHIFT", "5", "movetoworkspace", "5")
hl.bind(mainMod .. " SHIFT", "6", "movetoworkspace", "6")
hl.bind(mainMod .. " SHIFT", "7", "movetoworkspace", "7")
hl.bind(mainMod .. " SHIFT", "8", "movetoworkspace", "8")
hl.bind(mainMod .. " SHIFT", "9", "movetoworkspace", "9")
hl.bind(mainMod .. " SHIFT", "0", "movetoworkspace", "10")
hl.bind(mainMod .. " SHIFT", "S", "movetoworkspace", "special")

-- Workspace navigation
hl.bind(mainMod .. " CTRL", "right", "workspace", "m+1")
hl.bind(mainMod .. " CTRL", "left", "workspace", "m-1")
hl.bind(mainMod, "mouse_down", "workspace", "e+1")
hl.bind(mainMod, "mouse_up", "workspace", "e-1")
-- hl.bind(mainMod .. " CTRL","down",        "workspace", "empty")

-- Fn keys
hl.bind("", "XF86MonBrightnessUp", "exec", "brightnessctl -d intel_backlight -q s +5%")
hl.bind("", "XF86MonBrightnessDown", "exec", "brightnessctl -d intel_backlight -q s 5%-")
hl.bind(mainMod, "XF86MonBrightnessUp", "exec", "pkill hyprsunset")
hl.bind(mainMod, "XF86MonBrightnessDown", "exec", "hyprsunset -t 3500")
hl.binde("", "XF86AudioRaiseVolume", "exec",
    "pactl set-sink-mute @DEFAULT_SINK@ 0 && pactl set-sink-volume @DEFAULT_SINK@ +5%")
hl.binde("", "XF86AudioLowerVolume", "exec",
    "pactl set-sink-mute @DEFAULT_SINK@ 0 && pactl set-sink-volume @DEFAULT_SINK@ -5%")
hl.bind("", "XF86AudioMute", "exec", "pactl set-sink-mute @DEFAULT_SINK@ toggle")
hl.bind("", "XF86AudioPlay", "exec", "playerctl play-pause")
hl.bind("", "XF86AudioPause", "exec", "playerctl pause")
hl.bind("", "XF86AudioNext", "exec", "playerctl next")
hl.bind("", "XF86AudioPrev", "exec", "playerctl previous")
hl.bind("", "XF86AudioMicMute", "exec", "pactl set-source-mute @DEFAULT_SOURCE@ toggle")
hl.bind("", "XF86Lock", "exec", "hyprlock")
hl.bind("", "code:238", "exec", "brightnessctl -d smc::kbd_backlight s +10")
hl.bind("", "code:237", "exec", "brightnessctl -d smc::kbd_backlight s 10-")
