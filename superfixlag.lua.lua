local Workspace = game:GetService("Workspace")
local Terrain = Workspace:WaitForChild("Terrain")
Terrain.WaterReflectance = 0
Terrain.WaterTransparency = 1
Terrain.WaterWaveSize = 0
Terrain.WaterWaveSpeed = 0

local Lighting = game:GetService("Lighting")
Lighting.Brightness = 0
Lighting.GlobalShadows = false
Lighting.FogEnd = 9e100
Lighting.FogStart = 0

sethiddenproperty(Lighting, "Technology", 2)
sethiddenproperty(Terrain, "Decoration", false) 


    game:GetService("Lighting"):ClearAllChildren()

for _, v in pairs(game.Players:GetChildren()) do
        for _, v2 in pairs(v.Character:GetDescendants()) do
            if v2:IsA("BasePart") or v2:IsA("Decal") then
                v2.Transparency = 1
            end
      end
end

game.Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("Decal") then
                    v.Transparency = 1
                end
            end
        end)
end)

for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
        if v:IsA("ScreenGui") then
            v.Enabled = false
        end
end

for i, v in pairs(game:GetService("StarterGui"):GetChildren()) do
        if v:IsA("ScreenGui") then
            v.Enabled = false
        end
end


setfpscap(8) 
