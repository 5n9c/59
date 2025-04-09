local TeleportModule = {}

local proPlaceId = 15191600573
local tradePlaceId = 15346670220

function TeleportModule.tryTeleport(placeId, buttonSelf)
    if not LocalPlayer then
        if buttonSelf then buttonSelf.Text = "Error" end
        return
    end

    if buttonSelf then
        buttonSelf.Text = "teleporting..."
        buttonSelf.Interactable = false
    end

    local success, errorMsg = pcall(TeleportService.Teleport, TeleportService, placeId, LocalPlayer)

    if not success then
        if buttonSelf then
            buttonSelf.Text = "Fail: " .. tostring(errorMsg or "Error"):sub(1, 20)
            task.wait(3)
            buttonSelf.Interactable = true
        end
    end
    return success
end

return TeleportModule
