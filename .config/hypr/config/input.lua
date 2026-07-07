-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                   Input / Cursor / Binds                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.config({
    input = {
        touchpad = {
            natural_scroll          = true,
            scroll_factor           = 0.5,
            middle_button_emulation = true,
            clickfinger_behavior    = true,
            tap_to_click            = true,
        },
        numlock_by_default = true,
        -- kb_options = "altwin:swap_alt_win, caps:swapescape",
    },

    cursor = {
        no_warps        = false,
        default_monitor = "DP-1",
    },

    binds = {
        workspace_back_and_forth = true,
        allow_workspace_cycles   = true,
        pass_mouse_when_bound    = false,
    },
})
