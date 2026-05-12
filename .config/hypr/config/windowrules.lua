-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Window Rules                        ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Top Bar panels
hl.window_rule({
    name      = "btop",
    float     = true,
    size      = "800 500",
    move      = "(13) (53)",
    animation = "slide left",
    -- stay_focused = true,
    match     = { class = "^(Monitor)$" },
})

hl.window_rule({
    name         = "khal",
    float        = true,
    size         = "480 368",
    move         = "(monitor_w*0.5-240) (53)",
    animation    = "slide top",
    stay_focused = true,
    match        = { class = "^(khal-popup)$" },
})

hl.window_rule({
    name      = "status",
    float     = true,
    size      = "720 720",
    move      = "(monitor_w-733) (53)",
    animation = "slide right",
    -- stay_focused = true,
    match     = { class = "^(org.pulseaudio.pavucontrol|com.saivert.pwvucontrol|Gazelle|bluetui)$" },
})

-- PIP
hl.window_rule({
    name  = "pip",
    float = true,
    -- size = "720 480",
    move  = "(monitor_w-window_w-13) (monitor_h-window_h-13)",
    pin   = true,
    match = { title = "^(Picture-in-Picture)$" },
})

-- Popups
hl.window_rule({
    name         = "albert",
    stay_focused = true,
    match        = { title = "^(Albert)$" },
})

hl.window_rule({
    name         = "gnome_prompts",
    stay_focused = true,
    match        = { class = "^(polkit-gnome-authentication-agent-1|gcr-prompter)$" },
})

hl.window_rule({
    name  = "file_pickers",
    float = true,
    size  = "1080 720",
    match = {
        class = "^()$",
        title = "^(Save File|Open File|Pick Files|Please choose a folder)$",
    },
})

hl.window_rule({
    name  = "xdg_popups",
    float = true,
    match = { class = "^(xdg-desktop-portal-gtk|xdg-desktop-portal-kde|xdg-desktop-portal-hyprland)(.*)$" },
})

hl.window_rule({
    name  = "polkit_popups",
    float = true,
    match = { class = "^(polkit-gnome-authentication-agent-1|hyprpolkitagent|org.org.kde.polkit-kde-authentication-agent-1)(.*)$" },
})

hl.window_rule({
    name  = "zenity_popups",
    float = true,
    match = { class = "^(zenity)$" },
})

hl.window_rule({
    name   = "steam",
    float  = true,
    center = true,
    match  = {
        class = "^()$",
        title = "^(Steam - Self Updater|Sign in to Steam)$",
    },
})

-- Apps
hl.window_rule({
    name           = "winboat",
    suppress_event = "fullscreen maximize activate activatefocus",
    match          = { class = "^(winboat)(.*)$" },
})

hl.window_rule({
    name  = "localsend",
    float = true,
    size  = "480 640",
    match = { class = "^(localsend)$" },
})

hl.window_rule({
    name           = "libreoffice-writer",
    suppress_event = "fullscreen maximize",
    match          = { class = "^(libreoffice-writer)(.*)$" },
})

-- Opacity
hl.window_rule({
    name   = "opaque",
    opaque = true,
    match  = { class = "^(firefox|discord|zen)$" },
})

-- Special Workspace
hl.window_rule({
    name      = "special_workspace_apps",
    workspace = "special",
    match     = { class = "^(com.github.wwmm.easyeffects|spotify|discord|vesktop)$" },
})


-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                         Layer Rules                         ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.layer_rule({
    name      = "waybar",
    animation = "slide top",
    match     = { namespace = "waybar" },
})

hl.layer_rule({
    name      = "wlogout",
    animation = "slide top",
    blur      = true,
    match     = { namespace = "logout_dialog" },
})

hl.layer_rule({
    name      = "nwg-drawer",
    animation = "slide bottom",
    blur      = true,
    match     = { namespace = "nwg-drawer" },
})
