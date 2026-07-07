-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                          Keybinds                           ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local mainMod     = "SUPER"
local launcher    = "albert toggle"
local filemanager = "nautilus --new-window"
local app_drawer  = "nwg-drawer"
local terminal    = "kitty"
local browser     = "/opt/zen-browser-bin/zen-bin"
local capturing   = "hyprshot -m region"
local editor      = "gnome-text-editor"

-- Launch Applications
hl.bind(mainMod .. " + space",  hl.dsp.exec_cmd(launcher))
hl.bind(mainMod .. " + A",      hl.dsp.exec_cmd(app_drawer))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B",      hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + F",      hl.dsp.exec_cmd(filemanager))
hl.bind(mainMod .. " + T",      hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd("easyeffects"))
hl.bind(mainMod .. " + Y",      hl.dsp.exec_cmd("kitty yazi"))
-- hl.bind(mainMod .. " + L",   hl.dsp.exec_cmd("localsend"))

-- Actions
hl.bind(mainMod .. " + CTRL + R",  hl.dsp.exec_cmd("hyprctl reload"))         -- Reload Hyprland configuration
hl.bind(mainMod .. " + W",         hl.dsp.exec_cmd("~/.config/hypr/scripts/kill-waybar.sh || ~/.config/hypr/scripts/start-waybar.sh"))                                                                             -- Toggle waybar
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill waybar && waybar")) -- Reload waybar
hl.bind(mainMod .. " + ALT + W",   hl.dsp.exec_cmd("waypaper --random"))      -- Change the wallpaper
hl.bind(mainMod .. " + CTRL + W",  hl.dsp.exec_cmd("waypaper --restore &"))   -- Restore wallpaper selection to all monitors
hl.bind(mainMod .. " + Print",     hl.dsp.exec_cmd(capturing))                -- Take a screenshot
hl.bind(mainMod .. " + C",         hl.dsp.exec_cmd(capturing))                -- Take a screenshot

-- Window Controls
hl.bind(mainMod .. " + Q",         hl.dsp.window.close())                       -- Kill active window
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen())                  -- Set active window to fullscreen
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.window.fullscreen({ mode = 1 }))      -- Maximize window
hl.bind(mainMod .. " + SHIFT + T", function()
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))                     -- Toggle active window into floating mode...
    hl.dispatch(hl.dsp.window.resize({ x = 1200, y = 750 , relative = false })) -- ...and resize it
end)
-- hl.bind(mainMod .. " + SHIFT + J", hl.dsp.layout("togglesplit")) -- Toggle split
-- hl.bind(mainMod .. " + G",         hl.dsp.group.toggle())        -- Toggle window group
-- hl.bind(mainMod .. " + K",         hl.dsp.layout("swapsplit"))   -- Swap split

-- Arrow Key Navigation
hl.bind(mainMod .. " + left",          hl.dsp.focus({ direction = "l" }))                          -- Move focus left
hl.bind(mainMod .. " + right",         hl.dsp.focus({ direction = "r" }))                          -- Move focus right
hl.bind(mainMod .. " + up",            hl.dsp.focus({ direction = "u" }))                          -- Move focus up
hl.bind(mainMod .. " + down",          hl.dsp.focus({ direction = "d" }))                          -- Move focus down
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.swap({ direction = "l" }))                    -- Swap tiled window left
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "r" }))                    -- Swap tiled window right
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.swap({ direction = "u" }))                    -- Swap tiled window up
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.swap({ direction = "d" }))                    -- Swap tiled window down
hl.bind(mainMod .. " + ALT + right",   hl.dsp.window.resize({ x = 100, y = 0, relative = true }))  -- Increase window width
hl.bind(mainMod .. " + ALT + left",    hl.dsp.window.resize({ x = -100, y = 0, relative = true })) -- Reduce window width
hl.bind(mainMod .. " + ALT + down",    hl.dsp.window.resize({ x = 0, y = 100, relative = true }))  -- Increase window height
hl.bind(mainMod .. " + ALT + up",      hl.dsp.window.resize({ x = 0, y = -100, relative = true })) -- Reduce window height

-- Vim Key Navigation
hl.bind(mainMod .. " + H",         hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + L",         hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + K",         hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + J",         hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind(mainMod .. " + ALT + L",   hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + ALT + H",   hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + ALT + J",   hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind(mainMod .. " + ALT + K",   hl.dsp.window.resize({ x = 0, y = -100, relative = true }))

-- Mouse Navigation
hl.bind(mainMod .. " + mouse:272",         hl.dsp.window.drag(), { mouse = true })   -- Move window with the mouse
hl.bind(mainMod .. " + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true }) -- Resize window with the mouse

-- Tab Through Apps
hl.bind(mainMod .. " + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())   -- Cycle between windows
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring active window to the top
end, { repeating = true })

-- Workspace Controls
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i,         hl.dsp.focus({ workspace = i }))          -- Open workspace N
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))    -- Move active window to workspace N
end
hl.bind(mainMod .. " + 0",            hl.dsp.focus({ workspace = 10 }))              -- Open workspace 10
hl.bind(mainMod .. " + SHIFT + 0",    hl.dsp.window.move({ workspace = 10 }))        -- Move active window to workspace 10
hl.bind(mainMod .. " + S",            hl.dsp.workspace.toggle_special())             -- Toggle Special Workspace
hl.bind(mainMod .. " + SHIFT + S",    hl.dsp.window.move({ workspace = "special" })) -- Move active window to special workspace
hl.bind(mainMod .. " + CTRL + right", hl.dsp.focus({ workspace = "m+1" }))           -- Open next workspace
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.focus({ workspace = "m-1" }))           -- Open previous workspace
hl.bind(mainMod .. " + mouse_down",   hl.dsp.focus({ workspace = "e+1" }))           -- Open next workspace
hl.bind(mainMod .. " + mouse_up",     hl.dsp.focus({ workspace = "e-1" }))           -- Open previous workspace
-- hl.bind(mainMod .. " + CTRL + down", hl.dsp.focus({ workspace = "empty" }))       -- Open the next empty workspace

-- Fn keys
hl.bind("XF86AudioMute",                       hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),       { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",                hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),        { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume",                hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),   { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",                    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",               hl.dsp.exec_cmd("brightnessctl -d intel_backlight -e3 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",                 hl.dsp.exec_cmd("brightnessctl -d intel_backlight -e3 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("ALT + XF86MonBrightnessDown",         hl.dsp.exec_cmd("brightnessctl -d nvidia_0 set 5%-"),                { locked = true, repeating = true })
hl.bind("ALT + XF86MonBrightnessUp",           hl.dsp.exec_cmd("brightnessctl -d nvidia_0 set 5%+"),                { locked = true, repeating = true })
hl.bind(mainMod .. " + XF86MonBrightnessUp",   hl.dsp.exec_cmd("pkill hyprsunset"))
hl.bind(mainMod .. " + XF86MonBrightnessDown", hl.dsp.exec_cmd("hyprsunset -t 3500"))
hl.bind("XF86AudioPlay",                       hl.dsp.exec_cmd("playerctl play-pause"))                          -- Audio play pause
hl.bind("XF86AudioPause",                      hl.dsp.exec_cmd("playerctl pause"))                               -- Audio pause
hl.bind("XF86AudioNext",                       hl.dsp.exec_cmd("playerctl next"))                                -- Audio next
hl.bind("XF86AudioPrev",                       hl.dsp.exec_cmd("playerctl previous"))                            -- Audio previous
