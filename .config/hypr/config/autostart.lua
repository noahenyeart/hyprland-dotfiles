-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Autostart / exec-once                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.exec("nwg-drawer -r -c 5 -nocats -mb 150 -ml 500 -mr 500 -mt 150 &")

hl.exec_once("gsettings set org.gnome.desktop.wm.preferences button-layout ':'")
hl.exec_once(idlehandler .. " &")
hl.exec_once("awww-daemon &")
hl.exec_once("waypaper --restore &")
hl.exec_once("waybar &")
hl.exec_once("mako &")
hl.exec_once("albert &")
hl.exec_once("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &")
hl.exec_once("tailscale systray &")
hl.exec_once("localsend --hidden &")
hl.exec_once("hyprctl setcursor Bibata-Modern-Classic 24 &")
