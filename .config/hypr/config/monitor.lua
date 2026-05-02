-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Monitor Configuration                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.monitor(",preferred,auto,1.25")
hl.monitor("eDP-1,2560x1600@240.00,0x0,1.25,bitdepth,10")
hl.monitor("eDP-2,2560x1600@240.00,0x0,1.25,bitdepth,10")
hl.monitor("DP-1,3840x2160@144.00,2048x-680,1.25,bitdepth,10")
hl.monitor("DP-2,3840x2160@144.00,2048x-680,1.25,bitdepth,10")
hl.monitor("HDMI-A-1,3840x2160@144.00,2048x-680,1.25,bitdepth,10")

-- Workspace pinned to internal display
hl.workspace("1, default:true, monitor:eDP-1")

-- Lid switch binds (uncomment if needed)
-- hl.bindl(",switch:on:Lid Switch,exec,hyprctl keyword monitor eDP-1,disable")
-- hl.bindl(",switch:off:Lid Switch,exec,hyprctl keyword monitor eDP-1,2560x1600@240.00,0x0,1.25")
