-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                  General / Layout / Misc                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.config({
    general = {
        gaps_in                 = 5,
        gaps_out                = "0, 10, 10, 10",
        float_gaps              = 10,
        border_size             = 3,
        ["col.active_border"]   = colors.rosewater,
        ["col.inactive_border"] = colors.surface0,
        layout                  = "master",
        snap                    = {
            enabled      = true,
            respect_gaps = true,
        },
    },

    group = {
        ["col.border_active"]          = colors.rosewater,
        ["col.border_inactive"]        = colors.surface0,
        ["col.border_locked_active"]   = colors.rosewater,
        ["col.border_locked_inactive"] = colors.surface0,
        groupbar                       = {
            font_family             = "Fira Sans",
            text_color              = colors.text,
            ["col.active"]          = colors.rosewater,
            ["col.inactive"]        = colors.surface0,
            ["col.locked_active"]   = colors.rosewater,
            ["col.locked_inactive"] = colors.surface0,
        },
    },

    misc = {
        font_family            = "Fira Sans",
        splash_font_family     = "Fira Sans",
        disable_hyprland_logo  = true,
        ["col.splash"]         = colors.text,
        background_color       = colors.base,
        enable_swallow         = true,
        swallow_regex          = "^(firefox|nautilus.)$",
        focus_on_activate      = true,
        vfr                    = true,
        vrr                    = 1,
        middle_click_paste     = true,
        animate_manual_resizes = true,
    },

    render = {
        direct_scanout = 1,
    },

    dwindle = {
        special_scale_factor = 0.9,
        pseudotile           = true,
        preserve_split       = true,
    },

    master = {
        special_scale_factor = 0.9,
    },

    xwayland = {
        force_zero_scaling = true, -- Unscale XWayland
    },
})
