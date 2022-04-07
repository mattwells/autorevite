_addon.name = 'AutoRevite'
_addon.author = 'Andro'
_addon.version = '1'

local revitalizerId = 4146
local ghoyusReverieId = 129

windower.register_event(
    'add item',
    function(_, _, itemId)
        if itemId ~= revitalizerId then return end

        if windower.ffxi.get_info().zone ~= ghoyusReverieId then return end

        windower.add_to_chat(121, "Using Revitalizer.")

        windower.send_command('input /item Revitalizer <me>; wait 9; input /item "Maze Compass" <me>')
    end
)