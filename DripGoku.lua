--[[
	
░▒▓█ D r i p G o k u v10 █▓▒░	
	
--]]	

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "↓ Script Name ↓",
        Text = [[Drip Goku]],
        Duration = 5,
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "↓ Player Status ↓",
        Text = [[Friends]],
        Duration = 5,
    }
)

game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "↓ Current version ↓",
        Text = [[10.4.1]],
        Duration = 5,
    }
)

visualizer = true -- Change true to false to get rid of the visualizer
-- WARNING REMOVING THE VISUALIZER WILL STOP SOME THINGS FROM HAPPENING LIKE THE RECOLOR OF SLASHES AND THE HP TRACKER

local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")

    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
    wait(1)
    game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4370512420"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://4900761581"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://4576074471"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://5657245133"
game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
wait()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()
local CurrentCharacter = game:GetService("Players").LocalPlayer.PlayerData.CurrentCharacter.Value

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://6994043923"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://6994050486"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://6994060442"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://6994071435"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://7018884919"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6995335036"

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local UIS = game:GetService("UserInputService")
local m1cooldown = true 
UIS.InputBegan:Connect(function(input, IsTyping)
    if IsTyping then return end 
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if not m1cooldown then return end 
        m1cooldown = false
        delay(0.3,function()
            m1cooldown = true
        end)
        
local bruh = true 
spawn(function()
while bruh == true do
    wait()
    
for i,v in pairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
  if v.Animation.AnimationId == "rbxassetid://6994043923" or v.Animation.AnimationId == "rbxassetid://6994050486" or v.Animation.AnimationId == "rbxassetid://6994060442" or v.Animation.AnimationId == "rbxassetid://6994071435" or v.Animation.AnimationId == "rbxassetid://7018884919" then 
      
      bruh = false
      local Player = game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    local magpos = (Player.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
    local maxmagpos = 6
    if magpos <= maxmagpos and v ~= Player then 
        local A_1 = getrenv()._G.Pass
        local A_2 = v.Character
        local A_3 = {
    ["HitTime"] = 0.2,
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect",
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
    ["CameraShake"] = "Bump",
    ["Velocity"] = Player.Character.HumanoidRootPart.CFrame.lookVector * 1,
    ["CombatInv"] = true,
    ["Damage"] = 5
}
                                
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        
        
    end
end
elseif v.Animation.AnimationId == "rbxassetid://6995335036" then 
          local Player = game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    local magpos = (Player.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
    local maxmagpos = 6
    if magpos <= maxmagpos and v ~= Player then 
        local A_1 = getrenv()._G.Pass
        local A_2 = v.Character
        local A_3 = {
    ["HitTime"] = 1,
    ["Type"] = "Knockback", 
    ["HitEffect"] = "HeavyHitEffect",
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
    ["CameraShake"] = "Bump",
    ["Velocity"] = Player.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,50,0),
    ["CombatInv"] = true,
    ["Damage"] = 30
}
                                
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        
        
    end
end

end
end

end

end)

end
end)
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 160
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 340

--Thing
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["1"].Position = UDim2.new(-1.45, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["2"].Position = UDim2.new(-1.2, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["3"].Position = UDim2.new(-0.95, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["4"].Position = UDim2.new(-0.7, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["5"].Position = UDim2.new(-0.40, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Enabled = true
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "Drip Activated"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help:Destroy()
game.Workspace.ServerEffects.ServerCooldown:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
--the UI
local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(1,0.5,1)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.98, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.93,0)
	end)

local Player = game.Players.localPlayer
local char = Player.Character
local Character = Player.Character
local RootPart = Character.HumanoidRootPart
local Head = Character.Head

--------------------------------------------------------------------------
function ScreenBlurFlash()
game.Lighting.Blur.Size = 12
wait(0.2)
game.Lighting.Blur.Size = 9
wait(0.2)
game.Lighting.Blur.Size = 8
wait(0.2)
game.Lighting.Blur.Size = 7
wait(0.2)
game.Lighting.Blur.Size = 6
wait(0.2)
game.Lighting.Blur.Size = 5
wait(0.2)
game.Lighting.Blur.Size = 4
wait(0.2)
game.Lighting.Blur.Size = 3
wait(0.2)
game.Lighting.Blur.Size = 2
wait(0.2)
game.Lighting.Blur.Size = 1
wait(0.2)
game.Lighting.Blur.Size = 0
wait(0.2)
end
function LightFlash()
    game.Lighting.Brightness = 25
wait(0.05)
game.Lighting.Brightness = 24
wait(0.05)
game.Lighting.Brightness = 23
wait(0.05)
game.Lighting.Brightness = 22
wait(0.05)
game.Lighting.Brightness = 21
wait(0.05)
game.Lighting.Brightness = 20
wait(0.05)
game.Lighting.Brightness = 19
wait(0.05)
game.Lighting.Brightness = 18
wait(0.05)
game.Lighting.Brightness = 17
wait(0.05)
game.Lighting.Brightness = 16
wait(0.05)
game.Lighting.Brightness = 15
wait(0.05)
game.Lighting.Brightness = 14
wait(0.05)
game.Lighting.Brightness = 13
wait(0.05)
game.Lighting.Brightness = 12
wait(0.05)
game.Lighting.Brightness = 11
wait(0.05)
game.Lighting.Brightness = 10
wait(0.05)
game.Lighting.Brightness = 9
wait(0.05)
game.Lighting.Brightness = 8
wait(0.05)
game.Lighting.Brightness = 7
wait(0.05)
game.Lighting.Brightness = 6
wait(0.05)
game.Lighting.Brightness = 5
wait(0.05)
game.Lighting.Brightness = 4
wait(0.05)
game.Lighting.Brightness = 1
wait(0.05)
end
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6202682266"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=4056027321"
Hair7 = Instance.new("Part")
Hair7.Parent = char
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Really black")
Hair7.CFrame = char.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0


Weld1 = Instance.new("Weld")
Weld1.Parent = char.Head
Weld1.Part0 = char.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(0, 1.2, -0.17)

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0,-0.4,0)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(6.5, 6.5, 6.5)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=501884712"
Mesh.TextureId = "" 
wait(0.5)
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://8537751246" 
Sound.Name = "Drip"
wait(0)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [ Drip Goku ] *\n' ..Chat, 
          [4] = Color3.fromRGB(255, 255, 255)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
        Character = game.Players.LocalPlayer.Character
    spawn(function()
        repeat wait()
            for _,v in pairs(Character:GetChildren()) do
                if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                    v:Destroy()
                end
            end
        until false
    end)
end)
local animation1 = Instance.new("Animation")
animation1.AnimationId = "rbxassetid://4928592851"
local anim1 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation1)
anim1:Play()
game.Players:Chat("You!")
wait(3)
game.Players:Chat("Did you really think it would be that easy.?")
    wait(4)
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Slate,
    Color = Color3.fromRGB(99, 95, 98),
    Transparency = 0
    }
        times = 0
        _G.soulmode = 1
    _G.closed = false
    local effects = game.Players.LocalPlayer.Character.Effects
    local rs = game:GetService("RunService")
    
            local player = game.Players.LocalPlayer
    local Character = player.Character
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeProjectileOrange",
            [3] = "Spawn",
            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
        }
    }
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    local projectiles = game.Players.LocalPlayer.Character.Attacks
    for i,v in pairs(projectiles:GetChildren()) do
    if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
        v:WaitForChild("BodyVelocity"):Destroy()
        v:WaitForChild("ParticleEmitter"):Destroy()
        coroutine.resume(coroutine.create(function() 
    
            
    while 
    wait(0.05)
    do
        if _G.closed then
            break
            end
        times = times + 1
        if 
        times == 6
        then 
        times = 0
        end
        if times == 1 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,40,0)
    elseif times == 2 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(10,40,0)
    elseif times == 3 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,10)
    elseif times == 4 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,-10)
    elseif times == 5 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10,30,0)
        end
    
    
    local args1 = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeProjectileOrange",
            [3] = "Hit",
            [4] = v,
            [5] = v.CFrame,
            [6] = perseverance
        }
    }
    
    
    if _G.soulmode == 1 then
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
    end
    end
    end))
    end
    end

    ScreenBlurFlash()
    Hair7:Destroy()
wait(0)
Hair7 = Instance.new("Part")
Hair7.Parent = char
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Light blue")
Hair7.CFrame = char.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0


Weld1 = Instance.new("Weld")
Weld1.Parent = char.Head
Weld1.Part0 = char.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(-0.1, 1.1, -0.2) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0,-0.2,-0.14)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(7.3,7.1,7.2)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=1112376656"
Mesh.TextureId = "" 
game.Players:Chat("Well let me tell you something..")
wait(4)
game.Players:Chat("It wont! So prepare because..")
wait(5)
game.Players:Chat("It's about time I show you the true power of Drip!")

wait(7)
game.Players:Chat("DIE!")
local poof = Instance.new("Sound",Player)
poof.SoundId = "rbxassetid://1035030726"
poof.Pitch = 0.99
poof.Volume = 10
poof.Looped = false
wait(0)
poof:Play()
Hair7:Destroy()
LightFlash()
Hair7 = Instance.new("Part")
Hair7.Parent = char
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("White")
Hair7.CFrame = char.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0


Weld1 = Instance.new("Weld")
Weld1.Parent = char.Head
Weld1.Part0 = char.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(0, 1.2, -0.17) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0,-0.2,-0.14)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(7.3,5.8,7.2)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=1125231485"
Mesh.TextureId = "" 



local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) 
    if child.Name == "YellowBlast" and #slashes <= 0 then 
        child:WaitForChild("Hitted"):Destroy()
        table.insert(slashes,child) 
    end
end)
local speed = 0.01
local lradius = 15

local radius = 10
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(slashes) do 
        if not v or not v.Parent then 
            table.remove(slashes,i)
            return
        end
        local y = root.Position.Y
        local z = root.Position.Z
        local x = root.Position.X + radius*cos(rad(ts))
        v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
        ts = ts + 5
    end
end)


player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true

local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = char.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = char.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.9)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = char.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,1.3)*CFrame.Angles(0, 0, math.rad(75))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = char.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-2,0,0.5)*CFrame.Angles(0, 0, math.rad(-25))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = char.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-2,2,0.9)*CFrame.Angles(0, 0, math.rad(-35))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = char.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,3,1.3)*CFrame.Angles(0, 0, math.rad(-75))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(35)),
CFrame.new(2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(80)),
CFrame.new(2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(110)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-35)),
CFrame.new(-2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(-80)),
CFrame.new(-2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(-110))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,6,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectileOrange" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()


player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true
local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = char.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = char.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.5)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = char.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,0.5)*CFrame.Angles(0, 0, math.rad(65))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = char.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-2,0,0.5)*CFrame.Angles(0, 0, math.rad(-25))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = char.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-2,2,0.5)*CFrame.Angles(0, 0, math.rad(-35))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = char.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,3,0.5)*CFrame.Angles(0, 0, math.rad(-65))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(35)),
CFrame.new(3,3,0.5)*CFrame.Angles(0, 0, math.rad(60)),
CFrame.new(4,5,0.5)*CFrame.Angles(0, 0, math.rad(80)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-35)),
CFrame.new(-3,3,0.5)*CFrame.Angles(0, 0, math.rad(-60)),
CFrame.new(-4,5,0.5)*CFrame.Angles(0, 0, math.rad(-80))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,2,1 do
    spawn(function()
local A_1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectilePurple", 
    [3] = "Spawn",
    [4] = Vector3.new(0, 3000, 0) 
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
if child.Name == "KnifeSlashProjectilePurple" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
		table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 15

local radius = 20
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
wait(1)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
		table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 15

local radius = 30
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
wait(1)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
		table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 15

local radius = 40
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
wait(1)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
		table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 15

local radius = 50
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
--//=================================\\
--||Inf Tp
--\\=================================//

local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(function(k) 
            if k == "r" then
                function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
            end
        end)



-- the hide Chat
_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "1" then
	    if not Cooldown then
	        Cooldown = true
--reworked V 
_G.cdr = false
if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,5,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
--char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
--wait(.1)
amm = 4
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileYellow", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'YellowBlast Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'YellowBlast' then
am = am + 1
val.Value = am
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'YellowBlast' then
    v:WaitForChild('BodyVelocity'):Destroy()
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
v2 = Instance.new('BodyGyro',v)
fol = Instance.new('Folder',v2)
v2.Name = 'Client'
v2.MaxTorque = Vector3.new(1,1,1)*10000
v2.D = 0
v2.P = 3000
v2.CFrame = char.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(90),0,0)
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,20,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,20,z)
end
end
wait(0)
for i = 1,#tab do
    m.TargetFilter = game.workspace.Terrain
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-2,2)
z = math.random(-2,2)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-1,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileYellow", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
end
end)
         local l__LocalPlayer__1 = game.Players.LocalPlayer;
    local l__MoveDebounceShower__35 = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower;
        l__MoveDebounceShower__35.Parent = l__LocalPlayer__1.PlayerGui.UI.Ui;
        l__MoveDebounceShower__35.LocalScript.Disabled = false;
        local u3 = "1";
        local function u30(p10, p11, p12)
            if p11 then
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = true;
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = false;
                return;
            end;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Time.Value = p12;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = true;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = false;
        end;
        u30(1, true);
        u30(1,false,1.2)
        wait(1.2)
	   Cooldown = false
end
end
end)
local Cooldown = false
--// Special Hell 3
local Cooldown = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "2" then
	    if not Cooldown then
	        Cooldown = true
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://3752218582'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
         local l__LocalPlayer__1 = game.Players.LocalPlayer;
    local l__MoveDebounceShower__35 = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower;
        l__MoveDebounceShower__35.Parent = l__LocalPlayer__1.PlayerGui.UI.Ui;
        l__MoveDebounceShower__35.LocalScript.Disabled = false;
        local u3 = "1";
        local function u30(p10, p11, p12)
            if p11 then
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = true;
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = false;
                return;
            end;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Time.Value = p12;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = true;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = false;
        end;
        u30(2, true);
        wait(0.5)
        u30(2,false,0.05)
        wait(0.05)
	   Cooldown = false
end
end
end)
local Cooldown = false
--// Chara's Slash
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "3" then
	    if not Cooldown then
	        Cooldown = true
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://7019288804"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
for i = 1,3 do
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "LightHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch2,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 10
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
       local A_1 = getrenv()._G.Pass
wait(0.05)
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "LightHitEffect2",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch2,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,-2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 10
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
end
wait(1)
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Knockback", 
                                    ["HitEffect"] = "HeavyHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60,
                                    ["CombatInv"] = true,
                                    ["Damage"] = 20
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
local l__LocalPlayer__1 = game.Players.LocalPlayer;
    local l__MoveDebounceShower__35 = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower;
        l__MoveDebounceShower__35.Parent = l__LocalPlayer__1.PlayerGui.UI.Ui;
        l__MoveDebounceShower__35.LocalScript.Disabled = false;
        local u3 = "1";
        local function u30(p10, p11, p12)
            if p11 then
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = true;
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = false;
                return;
            end;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Time.Value = p12;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = true;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = false;
        end;
        u30(3, true);
        u30(3,false,3)
        wait(3)
	   Cooldown = false
end
end
end)   
local Cooldown = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "4" then
	    if not Cooldown then
	        Cooldown = true
-- Script generated by SimpleSpy - credits to exx#9394
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://3752218582'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4456890962'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4456894133'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4348287123'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4348301706'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4348323561'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}
local num = math.random(1,180)
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(num))})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4456901030'
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Swing2,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(-25, 0, -210)})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://7007281153'-- put id here, with rbxasset thing and everything
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
      local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local l__LocalPlayer__1 = game.Players.LocalPlayer;
    local l__MoveDebounceShower__35 = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower;
        l__MoveDebounceShower__35.Parent = l__LocalPlayer__1.PlayerGui.UI.Ui;
        l__MoveDebounceShower__35.LocalScript.Disabled = false;
        local u3 = "1";
        local function u30(p10, p11, p12)
            if p11 then
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = true;
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = false;
                return;
            end;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Time.Value = p12;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = true;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = false;
        end;
        u30(4, true);
        u30(4,false,6)
        wait(6)
	   Cooldown = false
end
end
end)   
--// Final chaos yes 
local Cooldown = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "5" then
	    if not Cooldown then
	        Cooldown = true
for i = 1,15 do 
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Swing2,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(-25, 0, -210)})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://7007281153'-- put id here, with rbxasset thing and everything
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
      local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, -50, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Sounds.Swing2,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(-25, 0, -210)})
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://7007281153'-- put id here, with rbxasset thing and everything
k = hum:LoadAnimation(anim)
k:Play()
k:AdjustSpeed(2.5)
      local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local l__LocalPlayer__1 = game.Players.LocalPlayer;
    local l__MoveDebounceShower__35 = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower;
        l__MoveDebounceShower__35.Parent = l__LocalPlayer__1.PlayerGui.UI.Ui;
        l__MoveDebounceShower__35.LocalScript.Disabled = false;
        local u3 = "1";
        local function u30(p10, p11, p12)
            if p11 then
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = true;
                l__MoveDebounceShower__35["Moves" .. u3][p10].Start.Value = false;
                return;
            end;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Time.Value = p12;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = true;
            l__MoveDebounceShower__35["Moves" .. u3][p10].Activated.Value = false;
        end;
        u30(5, true);
        u30(5,false,10)
        wait(10)
	   Cooldown = false
end
end
end)



    --//=================================\\
    --||Drip
    --\\=================================//
--Mode
if visualizer == true then
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Drip Goku"
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectileOrange' then
v.Color = Color3.fromRGB(0,0,0)
end
end


player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectilePurple' then
v.Color = Color3.fromRGB(255,255,255)
end
end

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Removing' then
v.Color = Color3.fromRGB(255,255,255)
end
end
end
