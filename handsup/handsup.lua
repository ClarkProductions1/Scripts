-- handsup.lua
local handsUp = false

-- Function to toggle hands up
function toggleHandsUp()
    local playerPed = PlayerPedId()
    if DoesEntityExist(playerPed) then
        if not handsUp then
            TaskPlayAnim(playerPed, "random@mugging3", "handsup_standing_base", 8.0, -8.0, -1, 49, 0, false, false, false)
            handsUp = true
        else
            ClearPedTasks(playerPed)
            handsUp = false
        end
    end
end

-- Load animation dictionary
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        RequestAnimDict("random@mugging3")
        while not HasAnimDictLoaded("random@mugging3") do
            Citizen.Wait(100)
        end
    end
end)

-- Register the key mapping
RegisterKeyMapping('handsup', 'Hands Up', 'keyboard', 'F4')

-- Register command
RegisterCommand('handsup', function()
    toggleHandsUp()
end, false)
