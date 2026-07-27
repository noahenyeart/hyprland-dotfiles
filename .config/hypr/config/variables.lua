-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Variables                           ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local colors = require("config.colors")

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = {
            top    = 0,
            right  = 10,
            bottom = 10,
            left   = 10,
        },
        float_gaps  = 10,
        border_size = 3,
        layout      = "master",

        snap        = {
            enabled      = true,
            respect_gaps = true,
        },

        col         = {
            active_border   = colors.rosewater,
            inactive_border = colors.surface0,
        },
    },


    misc = {
        font_family                = "Fira Sans",
        disable_hyprland_logo      = true,
        disable_splash_rendering   = true,
        background_color           = colors.base,
        enable_swallow             = true,
        swallow_regex              = "^(firefox|zen)$",
        focus_on_activate          = true,
        vrr                        = 1,
        middle_click_paste         = true,
        animate_manual_resizes     = true,
        initial_workspace_tracking = 0,
    },

    quirks = {
        prefer_hdr = 2,
    },

    dwindle = {
        special_scale_factor = 0.9,
        preserve_split       = true,
    },


    master = {
        special_scale_factor = 0.9,
    },


    xwayland = {
        force_zero_scaling = true,
    },
})
