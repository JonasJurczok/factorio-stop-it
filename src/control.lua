
require "mod-gui"
require "stopit/stopit"

-- when creating a new game, initialize data structure
--script.on_init(todo.mod_init)

-- When a player is joining, create the UI for them
--[[script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    todo.create_maximize_button(player)
end)]]--

-- if the version of the mod or any other version changed
--[[script.on_configuration_changed(function(_)
    todo.mod_init()
end)]]

script.on_event(defines.events.on_gui_click, function(event)
    stopit.on_gui_click(event)
end)

script.on_event("stopit-toggle-ui", function(event)
    local player = game.players[event.player_index]
    stopit.toggle_main_frame(player)
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    local player = game.players[event.player_index]
    local key = event.setting
    stopit.on_runtime_mod_setting_changed(player, key)
end)
