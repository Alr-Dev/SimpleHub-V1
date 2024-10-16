--[[
  ____  _                 _        _   _       _       ____  _             
 / ___|(_)_ __ ___  _ __ | | ___  | | | |_   _| |__   / ___|| | __ _ _ __  
 \___ \| | '_ ` _ \| '_ \| |/ _ \ | |_| | | | | '_ \  \___ \| |/ _` | '_ \ 
  ___) | | | | | | | |_) | |  __/ |  _  | |_| | |_) |  ___) | | (_| | |_) |
 |____/|_|_| |_| |_| .__/|_|\___| |_| |_|\__,_|_.__/  |____/|_|\__,_| .__/ 
  ____        _   _|_|_             _   _ _ _   _                   |_|    
 | __ )  __ _| |_| |_| | ___  ___  | | | (_) |_| |__   _____  __           
 |  _ \ / _` | __| __| |/ _ \/ __| | |_| | | __| '_ \ / _ \ \/ /           
 | |_) | (_| | |_| |_| |  __/\__ \ |  _  | | |_| |_) | (_) >  <            
 |____/ \__,_|\__|\__|_|\___||___/ |_| |_|_|\__|_.__/ \___/_/\_\           
 | ____|_  ___ __   __ _ _ __   __| | ___ _ __                             
 |  _| \ \/ / '_ \ / _` | '_ \ / _` |/ _ \ '__|                            
 | |___ >  <| |_) | (_| | | | | (_| |  __/ |                               
 |_____/_/\_\ .__/ \__,_|_| |_|\__,_|\___|_|                               
            |_|                                                            
            Made by: alr_dev
            To Simple Hub V1
]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Simple Hub Slap Battles Hitbox Expander",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by alr_dev",
})
local HeadSize = 10
local IsDisabled = true
local IsTeamCheckEnabled = false
local Tab = Window:CreateTab("Main", 4483362458)
local chams_enabled = false
local player = game.Players.LocalPlayer


local function getModel()
    return workspace:WaitForChild(player.Name)
end

local model = getModel()


player.CharacterAdded:Connect(function()
    model = getModel()
end)

local Slider = Tab:CreateSlider({
    Name = "HBE at players size",
    Range = {0, 100},
    Increment = 10,
    Suffix = "plhbe",
    CurrentValue = 30,
    Flag = "HBESIZE", 
    Callback = function(Value)
        HeadSize = Value
    end,
 })
local HitboxGloveY = Tab:CreateSlider({
    Name = "Glove Hitbox Y size",
    Range = {0, 100},
    Increment = 10,
    Suffix = "HBE",
    CurrentValue = 0.1,
    Flag = "HitboxY",
    Callback = function(Value)
        for _, item in ipairs(model:GetChildren()) do
            if item:IsA("Tool") then
                item.Glove.Size = Vector3.new(item.Glove.Size.X, Value, item.Glove.Size.Z)
                item.Handle.Size = Vector3.new(item.Handle.Size.X, Value, item.Handle.Size.Z)
            end
        end
    end,
})

local HitboxGloveX = Tab:CreateSlider({
    Name = "Glove Hitbox X size",
    Range = {0, 100},
    Increment = 10,
    Suffix = "HBE",
    CurrentValue = 0.1,
    Flag = "HitboxX",
    Callback = function(Value)
        for _, item in ipairs(model:GetChildren()) do
            if item:IsA("Tool") then
                item.Glove.Size = Vector3.new(Value, item.Glove.Size.Y, item.Glove.Size.Z)
                item.Handle.Size = Vector3.new(Value, item.Handle.Size.Y, item.Handle.Size.Z)
            end
        end
    end,
})

local HitboxGloveZ = Tab:CreateSlider({
    Name = "Glove Hitbox Z size",
    Range = {0, 100},
    Increment = 0.1,
    Suffix = "HBE",
    CurrentValue = 10,
    Flag = "HitboxZ",
    Callback = function(Value)
        for _, item in ipairs(model:GetChildren()) do
            if item:IsA("Tool") then
                item.Glove.Size = Vector3.new(item.Glove.Size.X, item.Glove.Size.Y, Value)
                item.Handle.Size = Vector3.new(item.Handle.Size.X, item.Handle.Size.Y, Value)
            end
        end
    end,
})

local TransparencyHitbox = Tab:CreateSlider({
    Name = "Transparency Hitbox",
    Range = {0, 1},
    Increment = 0.1,
    Suffix = "TH",
    CurrentValue = 0.1,
    Flag = "Transparency hitbox",
    Callback = function(Value)
        for _, item in ipairs(model:GetChildren()) do
            if item:IsA("Tool") then
                item.Glove.Transparency = Value
                item.Handle.Transparency = Value
            end
        end
    end,
})

local Chams = Tab:CreateToggle({
    Name = "Chams",
    CurrentValue = false,
    Flag = "Chams",
    Callback = function(Value)
        chams_enabled = Value
        for _, item in ipairs(model:GetChildren()) do
            if item:IsA("Tool") then
                if chams_enabled then
                    local chams = Instance.new("Highlight")
                    chams.Parent = item.Glove
                    chams.Enabled = true
                else
                    if item.Glove:FindFirstChild("Highlight") then
                        item.Glove.Highlight:Destroy()
                    end
                end
            end
        end
    end,
})
local AntiKick = Tab:CreateButton({
    Name = "Anti-Kick (USE IF U WANT TO ENABLE HBE NOT ON GLOVE AND ON PLAYERS, MADE BY EXYNUS)",
    Callback = function()
        --// Cache
        Rayfield:Notify({
            Title = "Simple Hub V1",
            Content = "This method are depricated, want to use infinite yield anti-kick? If yes, please press the 'Load' and but at infinite yield: clientantikick",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Load",
                  Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
               end
            },
         },
         })
    end,
 })
 local HBE = Tab:CreateButton({
    Name = "Hbe on players, (FIRST USE ANTI-KICK) ",
    Callback = function()

game:GetService('RunService').RenderStepped:Connect(function()
    if IsDisabled then
        local localPlayer = game:GetService('Players').LocalPlayer
        if not localPlayer then return end

        local localPlayerTeam = localPlayer.Team

        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player ~= localPlayer and (not IsTeamCheckEnabled or player.Team ~= localPlayerTeam) then
                local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = false
                end
            end
        end
    end
end)
    end,
 })
