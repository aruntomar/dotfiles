-- Keep only your personal input overrides here. Uncommented settings below
-- replace Omarchy's defaults.

-- Keyboard layout and options.
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
-- hl.config({
--   input = {
--     -- Use multiple keyboard layouts and switch between them with Left Alt + Right Alt.
--     kb_layout = "us,dk,eu",
--     kb_options = "compose:caps,shift:both_capslock_cancel,grp:alts_toggle",
--
--     -- Use a specific keyboard variant if needed (e.g. intl for international keyboards).
--     kb_variant = "intl",
--
--     -- Change speed of keyboard repeat.
--     repeat_rate = 40,
--     repeat_delay = 250,
--
--     -- Start with numlock on by default.
--     numlock_by_default = true,
--
--     -- Increase sensitivity for mouse/trackpad (default: 0).
--     sensitivity = 0.35,
--
--     -- Turn off mouse acceleration (default: adaptive).
--     accel_profile = "flat",
--
--     touchpad = {
--       -- Use natural (inverse) scrolling.
--       natural_scroll = true,
--
--       -- Use two-finger clicks for right-click instead of lower-right corner.
--       clickfinger_behavior = true,
--
--       -- Control the speed of your scrolling.
--       scroll_factor = 0.4,
--
--       -- Enable the touchpad while typing.
--       disable_while_typing = false,
--
--       -- Left-click-and-drag with three fingers.
--       drag_3fg = 1,
--     },
--   },
-- })

-- App-specific touchpad scroll speeds.
-- o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
-- o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })

-- Enable touchpad gestures for changing workspaces.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
-- hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Enable touchpad gestures for moving focus (helpful on scrolling layout).
-- hl.gesture({ fingers = 3, direction = "left", action = function() hl.dispatch(hl.dsp.focus({ direction = "l" })) end })
-- hl.gesture({ fingers = 3, direction = "right", action = function() hl.dispatch(hl.dsp.focus({ direction = "r" })) end })

-- Ensure new windows spawn on the currently active workspace of your active monitor
hl.config({
    misc = {
        focus_on_activate = true,
    },
})

-- configure mouse for left hand
hl.device({
  name = "logitech-m720-triathlon-multi-device-mouse-1",
  left_handed = true,
})

-- Lid Closed: Disable built-in display (workspaces automatically migrate to external)
hl.bind("switch:on:Apple SMC power/lid events", function()
    hl.monitor({
        output = "eDP-1",
        disabled = true,
    })

  -- 2. Force workspaces 1, 2, 3 (or whichever were on eDP-1) to move to your external monitor (DP-1)
    os.execute("hyprctl --batch 'dispatch moveworkspacetomonitor 1 HDMI-A-1; dispatch moveworkspacetomonitor 2 HDMI-A-1; dispatch moveworkspacetomonitor 3 HDMI-A-1'")
end, { locked = true })

-- Lid Opened: Re-enable built-in display
hl.bind("switch:off:Apple SMC power/lid events", function()
    hl.monitor({
        output = "eDP-1",
        disabled = false,
        mode = "preferred",
        position = "0x0",
    })

  -- 2. Move your primary workspaces back to the built-in screen
    os.execute("hyprctl --batch 'dispatch moveworkspacetomonitor 1 eDP-1; dispatch moveworkspacetomonitor 2 eDP-1; dispatch moveworkspacetomonitor 3 eDP-1'")
end, { locked = true })

-- configure/swap apple keyboard caps and ctrl key.
hl.device({
  name = "apple-spi-keyboard",
  kb_options = "ctrl:swapcaps",
})
