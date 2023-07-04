local Character = game:GetService("Players").LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

local Order={"BodyProportionScale","BodyHeightScale","BodyWidthScale","BodyDepthScale","HeadScale"}
for _,v in Order do
    repeat
        local found = Character:FindFirstChild("OriginalSize", true)
        local found2 = Character:FindFirstChild("OriginalPosition", true)
        local found3 = Character:FindFirstChild("AvatarPartScaleType", true)
        if found then found:Destroy() end
        if found2 then found2:Destroy() end
        if found3 then found3:Destroy() end
    until not found and not found2 and not found3
    Humanoid[v]:Destroy()
    task.wait(0.21)
end
