-- TODO: String format support missing
function stopit.log(message)
    if type(message) == 'table' then
        message = serpent.dump(message) .. ' [' .. #message .. ']'
    end
    message = "" .. message or '<nil>'

    if game then
        for _, p in pairs(game.players) do
            if (stopit.show_log(p)) then
                p.print(message)
            end
        end
    else
        error(serpent.dump(message, { compact = false, nocode = true, indent = ' ' }))
    end
end

function stopit.show_log(player)
    return settings.get_player_settings(player)["stopit-show-log"].value
end
