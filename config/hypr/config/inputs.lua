-- Input configuration

hl.config({
    input = {
        kb_layout = "latam",
        accel_profile = "flat",
        sensitivity = 0.5,				-- sensibilidad (-1, 1)
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.1		-- cambia la sensibilidad del scroll
        }
    },
    -- Uncomment the section below to enable software cursors; this can help with cursor display or behavior issues
    -- cursor = {
    --     no_hardware_cursors = 1,
    -- },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
-- hl.gesture({ fingers = 4, direction = "down",       action = "close" })
hl.gesture({ fingers = 4, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "down",       action = "float" })
