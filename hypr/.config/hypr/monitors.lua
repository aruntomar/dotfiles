-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

-- Monitor scale is Hyprland's scale for the output. It sizes everything
-- Wayland-native, accepts fractions (1.6, 1.75), and applies immediately.
-- "auto" lets Hyprland pick per display.

-- Configure a specific monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- GDK scale is GDK_SCALE, the factor GTK draws its own UI at. It's what
-- sizes X11/XWayland windows, which Omarchy leaves unscaled so they stay
-- crisp instead of being stretched by the compositor. GTK only honors whole
-- numbers, so use the nearest integer to the monitor scale, and restart an
-- app for a change to reach it.

-- Built-in MacBook Display
hl.monitor({
    output = "eDP-1",
    mode = "preferred", -- Or explicit like "2880x1800@60"
    position = "0x0",
    scale = 2,          -- Adjust scaling for Retina if needed
})

-- External Display
hl.monitor({
    output = "HDMI-A-1",    -- Replace with your external port name from hyprctl
    mode = "preferred",
    position = "auto-right", -- Position to the right of your laptop screen
    scale = 1,
})
