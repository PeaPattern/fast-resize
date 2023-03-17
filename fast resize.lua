local Character = game:GetService("Players").LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

local function Clear()
    repeat
        local found = Character:FindFirstChild("OriginalSize", true)
        if found then found:Destroy() end
    until not found
    repeat
        local found = Character:FindFirstChild("OriginalPosition", true)
        if found then found:Destroy() end
    until not found
    repeat
        local found = Character:FindFirstChild("AvatarPartScaleType", true)
        if found then found:Destroy() end
    until not found
end

local Order={"BodyProportionScale","BodyHeightScale","BodyWidthScale","BodyDepthScale","HeadScale"}
for _ = 1, 5 do
    Clear()
    Humanoid:FindFirstChild(Order[_]):Destroy()
    wait(0.1)
end
