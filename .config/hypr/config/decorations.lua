-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Decorations Configuration                ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.config({
    decoration = {
        rounding    = 10,
        dim_special = 0,
        -- active_opacity   = 0.9,
        -- inactive_opacity = 0.8,
        -- fullscreen_opacity = 1,

        blur = {
            enabled = false,
            -- size              = 6,
            -- passes            = 2,
            -- contrast          = 1.2, -- default 0.8916
            xray    = true,
            special = true,
            popups  = true,
        },

        shadow = {
            enabled      = true,
            range        = 30,
            render_power = 3,
            color        = "0x66000000",
        },
    },
})
