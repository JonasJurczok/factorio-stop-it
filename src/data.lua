require('todo.style')

local hotkey = {
    type = "custom-input",
    name = "stopit-toggle-ui",
    key_sequence = "CTRL + SHIFT + S",
    consuming = "none",
}
data:extend({hotkey})
