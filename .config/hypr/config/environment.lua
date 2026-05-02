-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Environment Variables                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Default apps
hl.env("BROWSER", "/opt/zen-browser-bin/zen-bin")
hl.env("TERM", "kitty")
hl.env("EDITOR", "nvim")

-- Screenshots
hl.env("HYPRSHOT_DIR", "/home/noahenyeart/Pictures/Screenshots")

-- GTK/GDK
hl.env("GDK_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- Cursor (daemon-scoped envd)
hl.envd("HYPRCURSOR_SIZE", "24")
hl.envd("XCURSOR_SIZE", "24")
hl.envd("QT_CURSOR_SIZE", "24")

-- GPU Management (uncomment as needed)
-- hl.env("LIBVA_DRIVER_NAME",          "iHD")
-- hl.env("LIBVA_DRIVER_NAME",          "nvidia")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME",  "nvidia")
