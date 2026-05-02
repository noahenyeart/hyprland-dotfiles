-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Window Rules                        ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Top Bar panels
hl.windowrule({
    name      = "btop",
    float     = "on",
    size      = "800 500",
    move      = "(13) (53)",
    animation = "slide left",
    -- stay_focused = "on",
    match     = { class = "^(Monitor)$" },
})

hl.windowrule({
    name         = "khal",
    float        = "on",
    size         = "480 368",
    move         = "(monitor_w*0.5-240) (53)",
    animation    = "slide top",
    stay_focused = "on",
    match        = { class = "^(khal-popup)$" },
})

hl.windowrule({
    name      = "status",
    float     = "on",
    size      = "720 720",
    move      = "(monitor_w-733) (53)",
    animation = "slide right",
    -- stay_focused = "on",
    match     = { class = "^(org.pulseaudio.pavucontrol|com.saivert.pwvucontrol|Gazelle|bluetui)$" },
})

-- PIP
hl.windowrule({
    name  = "pip",
    float = "on",
    -- size = "720 480",
    move  = "(monitor_w-window_w-13) (monitor_h-window_h-13)",
    pin   = "on",
    match = { title = "^(Picture-in-Picture)$" },
})

-- Popups
hl.windowrule({
    name         = "albert",
    stay_focused = "on",
    match        = { title = "^(Albert)$" },
})

hl.windowrule({
    name         = "gnome_prompts",
    stay_focused = "on",
    match        = { class = "^(polkit-gnome-authentication-agent-1|gcr-prompter)$" },
})

hl.windowrule({
    name  = "file_pickers",
    float = "on",
    size  = "1080 720",
    match = {
        class = "^()$",
        title = "^(Save File|Open File|Pick Files|Please choose a folder)$",
    },
})

hl.windowrule({
    name  = "xdg_popups",
    float = "on",
    match = { class = "^(xdg-desktop-portal-gtk|xdg-desktop-portal-kde|xdg-desktop-portal-hyprland)(.*)$" },
})

hl.windowrule({
    name  = "polkit_popups",
    float = "on",
    match = { class = "^(polkit-gnome-authentication-agent-1|hyprpolkitagent|org.org.kde.polkit-kde-authentication-agent-1)(.*)$" },
})

hl.windowrule({
    name  = "zenity_popups",
    float = "on",
    match = { class = "^(zenity)$" },
})

hl.windowrule({
    name   = "steam",
    float  = "on",
    center = "on",
    match  = {
        class = "^()$",
        title = "^(Steam - Self Updater|Sign in to Steam)$",
    },
})

-- Apps
hl.windowrule({
    name           = "winboat",
    suppress_event = "fullscreen maximize activate activatefocus",
    match          = { class = "^(winboat)(.*)$" },
})

hl.windowrule({
    name  = "localsend",
    float = "on",
    size  = "480 640",
    match = { class = "^(localsend)$" },
})

hl.windowrule({
    name           = "libreoffice-writer",
    suppress_event = "fullscreen maximize",
    match          = { class = "^(libreoffice-writer)(.*)$" },
})

-- Opacity
hl.windowrule({
    name   = "opaque",
    opaque = "on",
    match  = { class = "^(firefox|discord|zen)$" },
})

-- Workspace rules
hl.windowrule({
    name      = "special_workspace_apps",
    workspace = "special",
    match     = { class = "^(com.github.wwmm.easyeffects|spotify|discord)$" },
})


-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Layer Rules                         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.layerrule({
    name      = "waybar",
    animation = "slide top",
    match     = { namespace = "waybar" },
})

hl.layerrule({
    name      = "wlogout",
    animation = "slide top",
    blur      = "on",
    match     = { namespace = "logout_dialog" },
})

hl.layerrule({
    name      = "nwg-drawer",
    animation = "slide bottom",
    blur      = "on",
    match     = { namespace = "nwg-drawer" },
})
