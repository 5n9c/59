local largeSize = Vector3.new(1000, 1000, 1000)
local originalSize = Vector3.new(70.89118957519531, 31.799999237060547, 32.072750091552734)

local function findReadyZone()
    local workspace = game:GetService("Workspace")
    local newLobby = workspace:FindFirstChild("New Lobby")
    if not newLobby then return nil end
    local readyArea = newLobby:FindFirstChild("ReadyArea")
    if not readyArea then return nil end
    return readyArea:FindFirstChild("ReadyZone")
end
