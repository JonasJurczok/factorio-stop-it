local default_gui = data.raw["gui-style"].default

data:extend({
    {
        type = "font",
        name = "stopit_font_default",
        from = "default",
        size = 14
    },
})

data:extend({
    {
        type = "font",
        name = "stopit_font_subheading",
        from = "default",
        size = 18
    }
})

default_gui["stopit_table_default"] = {
    type = "table_style",
}

default_gui["stopit_button_default"] = {
    type = "button_style",
    font = "stopit_font_default",
    align = "center",
    vertical_align = "center"
}

default_gui["stopit_sprite_button_default"] = {
    type = "button_style",
    parent = "icon_button",
    font = "stopit_font_default",
    align = "center",
    vertical_align = "center",
    height = 36
}

default_gui["stopit_label_default"] = {
    type = "label_style",
    font = "stopit_font_default",
}

default_gui["stopit_textfield_default"] = {
    type = "textfield_style",
    font = "stopit_font_default",
    minimal_width = 300
}