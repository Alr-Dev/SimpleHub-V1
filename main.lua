--[[
   _____ _                 _        _    _       _      __      ____ 
  / ____(_)               | |      | |  | |     | |     \ \    / /_ |
 | (___  _ _ __ ___  _ __ | | ___  | |__| |_   _| |__    \ \  / / | |
  \___ \| | '_ ` _ \| '_ \| |/ _ \ |  __  | | | | '_ \    \ \/ /  | |
  ____) | | | | | | | |_) | |  __/ | |  | | |_| | |_) |    \  /   | |
 |_____/|_|_| |_| |_| .__/|_|\___| |_|  |_|\__,_|_.__/      \/    |_|
                    | |
                    |_|
                    Maded by: alr_dev

]]

                    local Players = game:GetService('Players')
                    local LocalPlayer = Players.LocalPlayer
                    local Workspace = game:GetService("Workspace")
                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    local Folder = Instance.new("Folder", Workspace)
                    local Part = Instance.new("Part", Folder)
                    local Attachment1 = Instance.new("Attachment", Part)
                    Part.Anchored = true
                    Part.CanCollide = false
                    Part.Transparency = 1
                    
                    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
                    local Window = Rayfield:CreateWindow({
                        Name = "Simple Hub V1",
                        LoadingTitle = "Loading.. ",
                        LoadingSubtitle = "by alr_dev",
                    })
                    local RunService = game:GetService("RunService")
                    local Tab = Window:CreateTab("Tools", 4483362458) 
                    local Tab2 = Window:CreateTab("Humanoid", 4483362458) 
                    local Utilities = Window:CreateTab("Utilities", 4483362458)
                    local Tab3 = Window:CreateTab("Scripts", 4483362458) 
                    local FlingTab = Window:CreateTab("Fling", 4483362458) 
                    local Xray = Window:CreateTab("Xray", 4483362458) 
                    
                    local Section = Tab:CreateSection("Tools")
                    
                   
                    local DEX = Tab3:CreateButton({
                        Name = "Dex V2 (UNDECTATABLE VERSION, MODIFIED BY ALR_DEV)",
                        Callback = function()
                            loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
                            local dex = game.Players.LocalPlayer.PlayerGui.Dex
                            dex.Parent = game.CoreGui
                        end,
                     })
                     local TSB = Tab3:CreateButton({
                        Name = "TSB",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidExploit/Gui/refs/heads/main/Gui"))()
                        end,
                     })
                     local Brookhaven = Tab3:CreateButton({
                        Name = "Brookhaven",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/sXPiterXs1111/SanderXV2.65/main/sanderXNewV2.65.lua'))()
                        end,
                     })
                     local Slap = Tab3:CreateButton({
                        Name = "SlapBattles",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/slapfarmgui/main/main.lua'))()
                        end,
                     })
                     local InfiniteYield = Tab3:CreateButton({
                        Name = "InfiniteYield",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
                        end,
                     })
                     local SPJREACH = Tab3:CreateButton({
                        Name = "MPS Futsal (HAVE KEY, WHEN UR CLICK LINK FROM KEY WILL BE COPIED TO CLIPBOARD.)",
                        Callback = function()
                            setclipboard("https://link-hub.net/1222082/key-spj-reach")
                            print("Link copied to clipboard!")
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
                        end,
                    })        
                    local SPJAIM = Tab3:CreateButton({
                        Name = "Cursor Lock (PC, AND HAVE KEY, KEY WILL BE COPIED TO CLIPBOARD WHEN U CLICK)",
                        Callback = function()
                            setclipboard("https://linkvertise.com/1222082/spj-aim-key?o=sharing")
                            print("Link copied to clipboard!")
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alr-Dev/SPJ-AIM/refs/heads/main/versions/KEY.luau", true))()
                        end,
                    })               
                    local ObjectDeleter = Tab:CreateButton({
                        Name = "Object deleter",
                        Callback = function()
                            local tool = Instance.new("Tool")
                            tool.RequiresHandle = false
                            tool.Name = "Object Deleter"
                            
       
                            local player = Players.LocalPlayer
                            
                            tool.Activated:Connect(function()
                                local mouse = player:GetMouse()
                                local target = mouse.Target
                                if target and target:IsA("BasePart") then
                                    target:Destroy()
                                end
                            end)
                            
                            tool.Parent = player.Backpack
                            
                        end,
                     })
                     local Tptool = Tab:CreateButton({
                        Name = "Tp Tool",
                        Callback = function()
                            local tool = Instance.new("Tool")
                            tool.RequiresHandle = false
                            tool.Name = "Teleport Tool"
                            
                            local Players = game:GetService("Players")
                            local player = Players.LocalPlayer
                            
                            local function onActivated()
                                local mouse = player:GetMouse()
                                if mouse.Target then
                                    player.Character:MoveTo(mouse.Hit.p)
                                end
                            end
                            
                            tool.Activated:Connect(onActivated)
                            
                            local function onEquipped()
                                
                            end
                            
                            local function onUnequipped()
                               
                            end
                            
                            tool.Equipped:Connect(onEquipped)
                            tool.Unequipped:Connect(onUnequipped)
                            
                            tool.Parent = player.Backpack 
                        end,
                     })
                     local BlackHole = Tab:CreateButton({
                        Name = "(FE) BlackHole",
                        Callback = function()
                    
                            if not getgenv().Network then
                                getgenv().Network = {
                                    BaseParts = {},
                                    Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
                                }
                                Network.RetainPart = function(Part)
                                    if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
                                        table.insert(Network.BaseParts, Part)
                                        Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                                        Part.CanCollide = false
                                    end
                                end
                                local function EnablePartControl()
                                    LocalPlayer.ReplicationFocus = Workspace
                                    RunService.Heartbeat:Connect(function()
                                        sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                        for _, Part in pairs(Network.BaseParts) do
                                            if Part:IsDescendantOf(Workspace) then
                                                Part.Velocity = Network.Velocity
                                            end
                                        end
                                    end)
                                end
                                EnablePartControl()
                            end
                            
                            local function ForcePart(v)
                                if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
                                    for _, x in next, v:GetChildren() do
                                        if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                                            x:Destroy()
                                        end
                                    end
                                    if v:FindFirstChild("Attachment") then
                                        v:FindFirstChild("Attachment"):Destroy()
                                    end
                                    if v:FindFirstChild("AlignPosition") then
                                        v:FindFirstChild("AlignPosition"):Destroy()
                                    end
                                    if v:FindFirstChild("Torque") then
                                        v:FindFirstChild("Torque"):Destroy()
                                    end
                                    v.CanCollide = false
                                    local Torque = Instance.new("Torque", v)
                                    Torque.Torque = Vector3.new(100000, 100000, 100000)
                                    local AlignPosition = Instance.new("AlignPosition", v)
                                    local Attachment2 = Instance.new("Attachment", v)
                                    Torque.Attachment0 = Attachment2
                                    AlignPosition.MaxForce = 9999999999999999
                                    AlignPosition.MaxVelocity = math.huge
                                    AlignPosition.Responsiveness = 200
                                    AlignPosition.Attachment0 = Attachment2
                                    AlignPosition.Attachment1 = Attachment1
                                end
                            end
                            
                            local blackHoleActive = false
                            
                            local function toggleBlackHole(state)
                                blackHoleActive = state
                                if blackHoleActive then
                                    for _, v in next, Workspace:GetDescendants() do
                                        ForcePart(v)
                                    end
                                    Workspace.DescendantAdded:Connect(function(v)
                                        if blackHoleActive then
                                            ForcePart(v)
                                        end
                                    end)
                                    spawn(function()
                                        while blackHoleActive and RunService.RenderStepped:Wait() do
                                            Attachment1.WorldCFrame = humanoidRootPart.CFrame
                                        end
                                    end)
                                end
                            end
                            
                            local tool = Instance.new("Tool")
                            tool.RequiresHandle = false
                            tool.Name = "BlackHole"
                            tool.Parent = LocalPlayer.Backpack
                            
                            tool.Equipped:Connect(function()
                                toggleBlackHole(true)
                            end)
                            
                            tool.Unequipped:Connect(function()
                                toggleBlackHole(false)
                            end)
                        end,
                     })
                    
                    
                     -- Sliders and variables
                     local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoid = character:WaitForChild("Humanoid")
                    local UserInputService = game:GetService("UserInputService")
                    local flingSpeed = 100
                    local flingEnabled = false
                    local RunService = game:GetService("RunService")
                    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    local connection
                    local WalkSpeed = Tab2:CreateSlider({
                        Name = "WalkSpeed ",
                        Range = {0, 100},
                        Increment = 1,
                        Suffix = "Speed",
                        CurrentValue = 16,
                        Flag = "WalkSpeed", 
                        Callback = function(Value)
                            humanoid.WalkSpeed = Value
                        end,
                     })
                    
                     local Jumppower = Tab2:CreateSlider({
                        Name = "Jumppower",
                        Range = {0, 100},
                        Increment = 1,
                        Suffix = "Jump",
                        CurrentValue = 50,
                        Flag = "Jumppower", 
                        Callback = function(Value)
                            humanoid.UseJumpPower = true
                            humanoid.JumpPower = Value
                        end,
                     })
                     local noclip = false
                    
                    
                    
                     local function toggleNoclip()
                        for _, part in pairs(character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = not noclip
                            end
                        end
                        print(noclip and "Noclip " .. (noclip and "enabled" or "disabled"))
                    end
                    
                    local nocliptoggle = Tab2:CreateToggle({
                        Name = "Noclip Toggle",
                        CurrentValue = false,
                        Flag = "NoclipToggle",
                        Callback = function(Value)
                            noclip = Value
                            toggleNoclip()
                        end,
                    })
                    
                    game:GetService("RunService").Stepped:Connect(function()
                        if noclip then
                            for _, part in pairs(character:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CanCollide = false
                                end
                            end
                        end
                    end)
                    
                    
                    local infiniteJumpEnabled = false
                    
                    local InfiniteJump = Tab2:CreateToggle({
                        Name = "Infinite Jump Toggle",
                        CurrentValue = false,
                        Flag = "InfiniteJumpToggle",
                        Callback = function(Value)
                            infiniteJumpEnabled = Value
                            print(infiniteJumpEnabled and "Infinite Jump enabled" or "Infinite Jump disabled")
                        end,
                    })
                    
                    UserInputService.JumpRequest:Connect(function()
                        if infiniteJumpEnabled then
                            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end)
                    
                    local flying = false
                    local speed = 50
                    local BodyGyro = Instance.new("BodyGyro")
                    local BodyVelocity = Instance.new("BodyVelocity")
                    local fly_enabled = false
                    
                    local function startFlying()
                        if fly_enabled then
                            flying = true
                            humanoid.PlatformStand = true
                            BodyGyro.Parent = character.HumanoidRootPart
                            BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                            BodyGyro.P = 9e4
                            BodyVelocity.Parent = character.HumanoidRootPart
                            BodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
                            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                        end
                    end
                    
                    local function stopFlying()
                        flying = false
                        humanoid.PlatformStand = false
                        BodyGyro.Parent = nil
                        BodyVelocity.Parent = nil
                    end
                    
                    local Fly = Tab2:CreateToggle({
                        Name = "Fly Toggle",
                        CurrentValue = false,
                        Flag = "FlyToggle",
                        Callback = function(Value)
                            fly_enabled = Value
                            if fly_enabled then
                                startFlying()
                                Rayfield:Notify({
                                    Title = "Simple Hub V1",
                                    Content = "Fly was activated",
                                    Duration = 6.5,
                                    Image = 4483362458,
                                    Actions = {
                                        Ignore = {
                                            Name = "Okay!",
                                            Callback = function()
                                            end,
                                        },
                                    },
                                })
                            else
                                stopFlying()
                            end
                        end,
                    })
                    
                    local FlySpeed = Tab2:CreateSlider({
                        Name = "Fly Speed",
                        Range = {0, 300},
                        Increment = 1,
                        Suffix = " Speed",
                        CurrentValue = 50,
                        Flag = "FlySpeed",
                        Callback = function(Value)
                            speed = Value
                        end,
                    })
                    
                    local walkFlingSpeed = 100
                    local walkFlingEnabled = false
                    local walkConnection
                    
                    local function startWalkFling()
                        walkFlingEnabled = true
                        walkConnection = RunService.Stepped:Connect(function()
                            for _, obj in pairs(workspace:GetDescendants()) do
                                if obj:IsA("BasePart") and obj.Parent ~= character then
                                    if (obj.Position - humanoidRootPart.Position).Magnitude <= 5 then
                                        local bodyVelocity = Instance.new("BodyVelocity")
                                        bodyVelocity.Velocity = (obj.Position - humanoidRootPart.Position).Unit * walkFlingSpeed
                                        bodyVelocity.P = 5000
                                        bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                                        bodyVelocity.Parent = obj
                    
                                        game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
                                    end
                                end
                            end
                        end)
                    end
                    
                    local function stopWalkFling()
                        walkFlingEnabled = false
                        if walkConnection then
                            walkConnection:Disconnect()
                        end
                    end
                    
                    local WalkFlingToggle = FlingTab:CreateToggle({
                        Name = "Walk Fling Toggle",
                        CurrentValue = false,
                        Flag = "WalkFlingToggle",
                        Callback = function(Value)
                            if Value then
                                startWalkFling()
                                Rayfield:Notify({
                                    Title = "Simple Hub V1",
                                    Content = "Walk Fling was activated",
                                    Duration = 6.5,
                                    Image = 4483362458,
                                    Actions = {
                                        Ignore = {
                                            Name = "Okay!",
                                            Callback = function() end,
                                        },
                                    },
                                })
                            else
                                stopWalkFling()
                            end
                        end,
                    })
                    
                    local WalkFlingSpeed = FlingTab:CreateSlider({
                        Name = "Walk Fling Speed",
                        Range = {0, 300},
                        Increment = 10,
                        Suffix = " Speed",
                        CurrentValue = 100,
                        Flag = "WalkFlingSpeed",
                        Callback = function(Value)
                            walkFlingSpeed = Value
                        end,
                    })
                    
                    local function startFling()
                        flingEnabled = true
                        local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
                        bodyAngularVelocity.AngularVelocity = Vector3.new(0, flingSpeed, 0)
                        bodyAngularVelocity.MaxTorque = Vector3.new(0, math.huge, 0)
                        bodyAngularVelocity.P = 10000
                        bodyAngularVelocity.Parent = humanoidRootPart
                    
                        connection = RunService.Stepped:Connect(function()
                            if flingEnabled then
                                humanoidRootPart.CFrame = humanoidRootPart.CFrame + Vector3.new(0, 0, 0) -- Keep the player in place
                                for _, obj in pairs(workspace:GetDescendants()) do
                                    if obj:IsA("BasePart") and obj.Parent ~= character then
                                        if (obj.Position - humanoidRootPart.Position).Magnitude <= 5 then
                                            local bodyVelocity = Instance.new("BodyVelocity")
                                            bodyVelocity.Velocity = (obj.Position - humanoidRootPart.Position).Unit * flingSpeed
                                            bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z) -- Remove vertical component
                                            bodyVelocity.P = 5000
                                            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                                            bodyVelocity.Parent = obj
                    
                                            game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
                                        end
                                    end
                                end
                            end
                        end)
                    end
                    
                    local function stopFling()
                        flingEnabled = false
                        if connection then
                            connection:Disconnect()
                        end
                        for _, bodyAngularVelocity in pairs(humanoidRootPart:GetChildren()) do
                            if bodyAngularVelocity:IsA("BodyAngularVelocity") then
                                bodyAngularVelocity:Destroy()
                            end
                        end
                    end
                    
                    local FlingToggle = FlingTab:CreateToggle({
                        Name = "Fling Toggle",
                        CurrentValue = false,
                        Flag = "FlingToggle",
                        Callback = function(Value)
                            if Value then
                                startFling()
                                Rayfield:Notify({
                                    Title = "Simple Hub V1",
                                    Content = "Fling was activated",
                                    Duration = 6.5,
                                    Image = 4483362458,
                                    Actions = {
                                        Ignore = {
                                            Name = "Okay!",
                                            Callback = function()
                                            end,
                                        },
                                    },
                                })
                            else
                                stopFling()
                            end
                        end,
                    })
                    
                    local FlingSpeed = FlingTab:CreateSlider({
                        Name = "Fling Speed",
                        Range = {0, 300},
                        Increment = 10,
                        Suffix = " Speed",
                        CurrentValue = 100,
                        Flag = "FlingSpeed",
                        Callback = function(Value)
                            flingSpeed = Value
                        end,
                    })
                    local xrayEnabled = false
                    local xrayRange = 50
                    local originalTransparency = {}
                    
                    local function toggleXray(state)
                        xrayEnabled = state
                        if xrayEnabled then
                            for _, part in pairs(Workspace:GetDescendants()) do
                                if part:IsA("BasePart") and (part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= xrayRange then
                                    originalTransparency[part] = part.Transparency
                                    part.Transparency = 0.7
                                end
                            end
                        else
                            for part, transparency in pairs(originalTransparency) do
                                if part:IsDescendantOf(Workspace) then
                                    part.Transparency = transparency
                                end
                            end
                            originalTransparency = {}
                        end
                    end
                    
                    local function updateXrayRange()
                        for part, transparency in pairs(originalTransparency) do
                            if part:IsDescendantOf(Workspace) then
                                part.Transparency = transparency
                            end
                        end
                        originalTransparency = {}
                    
                        if xrayEnabled then
                            for _, part in pairs(Workspace:GetDescendants()) do
                                if part:IsA("BasePart") and (part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= xrayRange then
                                    originalTransparency[part] = part.Transparency
                                    part.Transparency = 0.7
                                end
                            end
                        end
                    end
                    
                    local XrayToggle = Xray:CreateToggle({
                        Name = "Xray Toggle",
                        CurrentValue = false,
                        Flag = "XrayToggle",
                        Callback = function(Value)
                            toggleXray(Value)
                            Rayfield:Notify({
                                Title = "Simple Hub V1",
                                Content = Value and "X-Ray was activated" or "X-Ray was deactivated",
                                Duration = 6.5,
                                Image = 4483362458,
                                Actions = {
                                    Ignore = {
                                        Name = "Okay!",
                                        Callback = function() end,
                                    },
                                },
                            })
                        end,
                    })
                    
                    local XrayRange = Xray:CreateSlider({
                        Name = "Xray Range",
                        Range = {0, 300},
                        Increment = 10,
                        Suffix = " Range",
                        CurrentValue = 50,
                        Flag = "XrayRange",
                        Callback = function(Value)
                            xrayRange = Value
                            if xrayEnabled then
                                updateXrayRange()
                            end
                        end,
                    })
                    local fpsUnlockEnabled = false
local maxFps = 60

local function setFpsCap(fps)
    RunService.RenderStepped:Wait() 
    setfpscap(fps)
end

local function toggleFpsUnlocker(state)
    fpsUnlockEnabled = state
    if fpsUnlockEnabled then
        setFpsCap(maxFps)
    else
        setFpsCap(60) 
    end
end

local FpsUnlockerToggle = Utilities:CreateToggle({
    Name = "FPS Unlocker Toggle",
    CurrentValue = false,
    Flag = "FpsUnlockerToggle",
    Callback = function(Value)
        toggleFpsUnlocker(Value)
        Rayfield:Notify({
            Title = "Simple Hub V1",
            Content = Value and "FPS Unlocker was activated" or "FPS Unlocker was deactivated",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function() end,
                },
            },
        })
    end,
})

local FpsSlider = Utilities:CreateSlider({
    Name = "Max FPS",
    Range = {60, 1000},
    Increment = 10,
    Suffix = " FPS",
    CurrentValue = 60,
    Flag = "FpsSlider",
    Callback = function(Value)
        maxFps = Value
        if fpsUnlockEnabled then
            setFpsCap(maxFps)
        end
    end,
})         
local materialsEnabled = true
local originalMaterials = {}

local function toggleMaterials(state)
    materialsEnabled = state
    if materialsEnabled then
        for part, material in pairs(originalMaterials) do
            if part:IsDescendantOf(Workspace) then
                part.Material = material
            end
        end
        originalMaterials = {}
    else
        for _, part in pairs(Workspace:GetDescendants()) do
            if part:IsA("BasePart") then
                originalMaterials[part] = part.Material
                part.Material = Enum.Material.SmoothPlastic
            end
        end
    end
end

local MaterialsToggle = Utilities:CreateToggle({
    Name = "Materials Toggle",
    CurrentValue = true,
    Flag = "MaterialsToggle",
    Callback = function(Value)
        toggleMaterials(Value)
        Rayfield:Notify({
            Title = "Simple Hub V1",
            Content = Value and "Materials were restored" or "Materials were removed",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function() end,
                },
            },
        })
    end,
})

RunService.RenderStepped:Connect(function()
    if not materialsEnabled then
        for _, part in pairs(Workspace:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.SmoothPlastic
            end
        end
    end
end)

 RunService.RenderStepped:Connect(function()
                        if xrayEnabled then
                            updateXrayRange()
                        end
                    end)                    
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if flying then
                            BodyGyro.CFrame = workspace.CurrentCamera.CFrame
                            local direction = Vector3.new()
                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                direction = direction + workspace.CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                direction = direction - workspace.CurrentCamera.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                direction = direction - workspace.CurrentCamera.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                direction = direction + workspace.CurrentCamera.CFrame.RightVector
                            end
                            BodyVelocity.Velocity = direction * speed
                        end
                    end)
