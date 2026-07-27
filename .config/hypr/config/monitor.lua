-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Monitor Configuration                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1.25",
})

hl.monitor({
    output   = "eDP-1",
    mode     = "2560x1600@240.00",
    position = "0x0",
    scale    = "1.25",
    bitdepth = 10,
    -- cm       = "hdr",
    -- sdrbrightness = 0.5,
    -- sdrsaturation = 1.00,
    -- sdr_max_luminance = 496,
    -- sdr_min_luminance = 0.3960,
})

hl.monitor({
    output   = "eDP-2",
    mode     = "2560x1600@240.00",
    position = "0x0",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "DP-1",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "DP-2",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "DP-3",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "HDMI-A-2",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

hl.monitor({
    output   = "HDMI-A-3",
    mode     = "3840x2160@144.00",
    position = "2048x-800",
    scale    = "1.25",
    bitdepth = 10,
})

-- Pin workspace 1 to internal display
-- hl.workspace("1, default:true, monitor:eDP-1")

-- Lid switch binds
-- hl.bindl(",switch:on:Lid Switch,exec,hyprctl keyword monitor eDP-1,disable")
-- hl.bindl(",switch:off:Lid Switch,exec,hyprctl keyword monitor eDP-1,2560x1600@240.00,0x0,1.25")
