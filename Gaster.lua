game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
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

game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Idle.AnimationId = "rbxassetid://4514133740"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Run.AnimationId = "rbxassetid://3728873938"   
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").Animations.Walk.AnimationId = "rbxassetid://5096058312"     
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6:Destroy()

wait(1)

game.Players.LocalPlayer.Character.HeartLocket:Destroy()
game.Players.LocalPlayer.Character.RealKnife:Destroy()
game.Players.LocalPlayer.Character.HateArm:Destroy()
game.Players.LocalPlayer.Character.Head.face:Remove()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.SettingsButton:Destroy()

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()

wait(1)

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 130
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 65

game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(v)
    if v.Name == "TextBar" then
        v:WaitForChild("TextLabel")
        for _,v in pairs(v:GetChildren()) do
            game:GetService("RunService").Heartbeat:wait()
            v.TextColor3 = Color3.fromRGB(0, 0, 0)
        end
    end
end)

game.Workspace.ServerEffects.ServerCooldown:Destroy()

game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Rotation = 90
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Position = UDim2.new(0.462, 0, 0.654, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Position = UDim2.new(0.481, 0, 0.654, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Rotation = 90

game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then

			print("mouse cframe teleport")

			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else

			print("player cframe teleport")

			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)

--gaster start
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld", par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)


player = game:service("Players").LocalPlayer
char = player.Character
local beat = true
local beattime = 0.6
suit = Instance.new("Model", char)
suit.Name = "Gaster"
local vDebounce = false
Torso = char.Torso  
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
local SHOT_SPEED = 100
local SHOT_TIME = 1
local NOZZLE_OFFSET = Vector3.new(0, 0, 0)
mouse = player:GetMouse()

shieldparent1 = nil 
shieldparent2 = nil
shieldparent3 = nil
shieldparent4 = nil
shieldparent5 = nil
shieldparent6 = nil

switchvalue = 0
RandomGasterRotaion = 0
RandomPerseverance = 0

ShieldValueToGaster = false
ShieldValueToGasterDebounce = false

RW, LW = Instance.new("Weld"), Instance.new("Weld") 
 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 
RSH, LSH = nil, nil 

LS = Torso["Left Shoulder"] 
 
LH = Torso["Left Hip"] 
 
RS = Torso["Right Shoulder"] 
 
RH = Torso["Right Hip"] 
RSH = char.Torso["Right Shoulder"] 
 
LSH = char.Torso["Left Shoulder"] 



function startup()
	
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 

for i = 1,5 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(-8),0),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(8),0),LW.C0,0.1)	
		

end	
coroutine.resume(coroutine.create(function()
wait(1)
for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(-math.rad(-.1),-math.rad(-.1),-math.rad(3)),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(math.rad(.1),math.rad(.1),-math.rad(-3)),LW.C0,0.1)	
		

end	

for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(-math.rad(-4),-math.rad(-4),-math.rad(-4)),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(-4),-math.rad(4)),LW.C0,0.1)	
		

end	


end))
end



local Sounds = {
        Gaster = Instance.new("Sound"),
        Gun = Instance.new("Sound"),
        Switch = Instance.new("Sound"),
        Explode = Instance.new("Sound"),
        GasterTheme = Instance.new("Sound")
}
 
Sounds["Gaster"].SoundId = "rbxassetid://345052019"
Sounds["Gaster"].Volume = 1
Sounds["Gun"].SoundId = "http://www.roblox.com/asset?id=406913243"
Sounds["Gun"].Volume = 1
Sounds["Switch"].SoundId = "http://www.roblox.com/asset?id=388205678"
Sounds["Switch"].Volume = 1
Sounds["Explode"].SoundId = "rbxasset://sounds/collide.wav"
Sounds["Explode"].Volume = .1
Sounds["GasterTheme"].SoundId = "rbxassetid://323177357"
Sounds["GasterTheme"].Volume = 99
 
function PlaySound(soundname, pitch, where, looped)
        Sounds[soundname].Parent = where
        Sounds[soundname].Pitch = pitch
        Sounds[soundname].Looped= looped
        Sounds[soundname]:Play()
        local oldsound = Sounds[soundname]
        coroutine.resume(coroutine.create(function()

                wait(4)
for i = 1,1 do
		if oldsound.Looped == true then return end
                oldsound:Destroy()
end
        end))
        Sounds[soundname] = Sounds[soundname]:clone()
end

firstuse = true
InUse = false

JusticeAttack = false
JusticeAttackDebounce = false

IntegrityAttack = false
IntegrityAttackDebounce = false

PerseveranceAttack = false
PerseveranceAttackDebounce = false

KindnessAttack = false
KindnessAttackDebounce = false

DeterminationAttack = false
DetermiantionAttackDebounce = false

PatienceAttack = false
PatienceAttackDebounce = false

BraveryAttack = false
BraveryAttackDebounce = false


hand1DeterminationhealthDown = false
hand2PerseverancehealthDown = false
hand3PatiencehealthDown = false
hand4IntegrityhealthDown = false
hand5BraveryhealthDown = false
hand6JusticehealthDown = false
hand7KindnesshealthDown = false

hand1Determination = Instance.new("Model", char)
hand1Determination.Name ="Red"
hand2Perseverance = Instance.new("Model", char)
hand2Perseverance.Name ="Purple"
hand3Patience = Instance.new("Model", char)
hand3Patience.Name = "Cyan"
hand4Integrity = Instance.new("Model", char)
hand4Integrity.Name = "Blue"
hand5Bravery = Instance.new("Model", char)
hand5Bravery.Name = "Orange"
hand6Justice = Instance.new("Model", char)
hand6Justice.Name = "Yellow"
hand7Kindness = Instance.new("Model", char)
hand7Kindness.Name = "Green"

function teleportPlayer(pos)
 
	if player == nil or player.Character == nil then return end

	char["Left Leg"].CFrame = CFrame.new(Vector3.new(pos.x, pos.y , pos.z))
coroutine.resume(coroutine.create(function()

TeleportPart = Instance.new("Part",workspace)

TeleportPart.FormFactor="Custom"

TeleportPart.Size=Vector3.new(0.8,0.8,0.8)

TeleportPart.TopSurface = 0

TeleportPart.BottomSurface = 0

local colorc = {"Black"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

TeleportPart.BrickColor = Fire

TeleportPart.CanCollide=false

TeleportPart.Anchored=true

TeleportPart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

TeleportPartmesh = Instance.new("BlockMesh",TeleportPart)
	

game.Debris:AddItem(TeleportPart,1.5)

for i = 1,5 do wait()
Torso.Transparency = Torso.Transparency - 0.2
char["Left Arm"].Transparency = char["Left Arm"].Transparency - 0.2
char["Left Leg"].Transparency = char["Left Leg"].Transparency - 0.2
char["Right Arm"].Transparency = char["Right Arm"].Transparency - 0.2
char["Right Leg"].Transparency = char["Right Leg"].Transparency - 0.2
char.Head.Transparency = char.Head.Transparency - 0.2
Crack1.Transparency = Crack1.Transparency - 0.2
Crack2.Transparency = Crack2.Transparency - 0.2
mouth.Transparency = mouth.Transparency - 0.2
Eye1.Transparency = Eye1.Transparency - 0.2
Eye2.Transparency = Eye2.Transparency - 0.2
MEye1.Transparency = MEye1.Transparency - 0.2
MEye2.Transparency = MEye2.Transparency - 0.2
end


Torso.Transparency = 0
char["Left Arm"].Transparency = 0
char["Left Leg"].Transparency = 0
char["Right Arm"].Transparency = 0
char["Right Leg"].Transparency = 0
char.Head.Transparency = 0
Crack1.Transparency = 0
Crack2.Transparency = 0
mouth.Transparency = 0
Eye1.Transparency = 0
Eye2.Transparency = 0
MEye1.Transparency = 0
MEye2.Transparency = 0

end))

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = Torso.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Black")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05	
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)



end
for i = 1,10 do wait()
	
TeleportPartmesh.Scale=Vector3.new(2*i,2*i,2*i)
TeleportPart.CFrame = clerp(TeleportPart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),TeleportPart.CFrame,0.1) 
TeleportPart.Transparency = TeleportPart.Transparency + 0.1	
end	
end

for _,v in pairs(char.Head:GetChildren()) do if v.ClassName=="Decal" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Shirt" or v.ClassName=="Pants" or v.ClassName=="T-Shirt" or v.ClassName=="ShirtGraphic" or v.ClassName=="CharacterMesh" then v:remove() end end
shirt=Instance.new("Shirt", char)
pants=Instance.new("Pants", char)
char.Head.BrickColor = BrickColor.new("Institutional white")


shirt.ShirtTemplate="rbxassetid://535199088"
pants.PantsTemplate="rbxassetid://532840011"

--------Gaster's hand

startup()

hand1DeterminationPosition = Instance.new("Part",suit)
hand1DeterminationPosition.Size = Vector3.new(1,1,1)
hand1DeterminationPosition.Transparency = 1
hand1DeterminationPosition.CanCollide = false

weld(Torso,hand1DeterminationPosition,CFrame.new(0,0,0),CFrame.new(-2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand2PerseverancePosition = Instance.new("Part",suit)
hand2PerseverancePosition.Size = Vector3.new(1,1,1)
hand2PerseverancePosition.Transparency = 1
hand2PerseverancePosition.CanCollide = false

weld(Torso,hand2PerseverancePosition,CFrame.new(0,0,0),CFrame.new(2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand3PatiencePosition = Instance.new("Part",suit)
hand3PatiencePosition.Size = Vector3.new(1,1,1)
hand3PatiencePosition.Transparency = 1
hand3PatiencePosition.CanCollide = false

weld(Torso,hand3PatiencePosition,CFrame.new(0,0,0),CFrame.new(-4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand4IntegrityPosition = Instance.new("Part",suit)
hand4IntegrityPosition.Size = Vector3.new(1,1,1)
hand4IntegrityPosition.Transparency = 1
hand4IntegrityPosition.CanCollide = false

weld(Torso,hand4IntegrityPosition,CFrame.new(0,0,0),CFrame.new(4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand5BraveryPosition = Instance.new("Part",suit)
hand5BraveryPosition.Size = Vector3.new(1,1,1)
hand5BraveryPosition.Transparency = 1
hand5BraveryPosition.CanCollide = false

weld(Torso,hand5BraveryPosition,CFrame.new(0,0,0),CFrame.new(-6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand6JusticePosition = Instance.new("Part",suit)
hand6JusticePosition.Size = Vector3.new(1,1,1)
hand6JusticePosition.Transparency = 1
hand6JusticePosition.CanCollide = false

weld(Torso,hand6JusticePosition,CFrame.new(0,0,0),CFrame.new(6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand7KindnessPosition = Instance.new("Part",suit)
hand7KindnessPosition.Size = Vector3.new(1,1,1)
hand7KindnessPosition.Transparency = 1
hand7KindnessPosition.CanCollide = false

weld(Torso,hand7KindnessPosition,CFrame.new(0,0,0),CFrame.new(0, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


AttackPosition = Instance.new("Part",suit)
AttackPosition.Size = Vector3.new(1,1,1)
AttackPosition.Transparency = 1
AttackPosition.CanCollide = false

weld(Torso,AttackPosition,CFrame.new(0,0,0),CFrame.new(0, 0, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

--------Gaster's Health of hands and hands

hand1Determinationhealth = Instance.new("Humanoid",hand1Determination)
hand1Determinationhealth.DisplayDistanceType = "None"
hand1Determinationhealth.Health = 100
hand1Determinationhealth.MaxHealth = 100

Determination = Instance.new("Part",hand1Determination)
Determination.Size = Vector3.new(1,1.5,0.2)
Determination.Name = "Head"
Determination.Position = hand1DeterminationPosition.Position
DeterminationMesh = Instance.new("SpecialMesh",Determination)
DeterminationMesh.MeshId = "rbxassetid://430045961"
DeterminationMesh.Offset = Vector3.new(0.09,0.1,0)
Determination.BrickColor = BrickColor.new("Institutional white")

DeterminationOrb = Instance.new("Part",Determination)
DeterminationOrb.Size = Vector3.new(0.3,0.3,0.2)
DeterminationOrb.BrickColor = BrickColor.new("Really red")
weld(Determination,DeterminationOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand1DeterminationPosition,Determination,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end	
p:remove()



--2--


hand2Perseverancehealth = Instance.new("Humanoid",hand2Perseverance)
hand2Perseverancehealth.DisplayDistanceType = "None"
hand2Perseverancehealth.Health = 100
hand2Perseverancehealth.MaxHealth = 100

Perseverance = Instance.new("Part",hand2Perseverance)
Perseverance.Size = Vector3.new(1,1.5,0.2)
Perseverance.Name = "Head"
Perseverance.Position = hand2PerseverancePosition.Position
PerseveranceMesh = Instance.new("SpecialMesh",Perseverance)
PerseveranceMesh.MeshId = "rbxassetid://430045961"
PerseveranceMesh.Offset = Vector3.new(0.09,0.1,0)
Perseverance.BrickColor = BrickColor.new("Institutional white")

PerseveranceOrb = Instance.new("Part",Perseverance)
PerseveranceOrb.Size = Vector3.new(0.3,0.3,0.2)
PerseveranceOrb.BrickColor = BrickColor.new("Magenta")
weld(Perseverance,PerseveranceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand2PerseverancePosition,Perseverance,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--3--

hand3Patiencehealth = Instance.new("Humanoid",hand3Patience)
hand3Patiencehealth.DisplayDistanceType = "None"
hand3Patiencehealth.Health = 100
hand3Patiencehealth.MaxHealth = 100

Patience = Instance.new("Part",hand3Patience)
Patience.Size = Vector3.new(1,1.5,0.2)
Patience.Name = "Head"
PatienceMesh = Instance.new("SpecialMesh",Patience)
PatienceMesh.MeshId = "rbxassetid://430045961"
PatienceMesh.Offset = Vector3.new(0.09,0.1,0)
Patience.BrickColor = BrickColor.new("Institutional white")


PatienceOrb = Instance.new("Part",Patience)
PatienceOrb.Size = Vector3.new(0.3,0.3,0.2)
PatienceOrb.BrickColor = BrickColor.new("Cyan")
weld(Patience,PatienceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand3PatiencePosition,Patience,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--4--

hand4Integrityhealth = Instance.new("Humanoid",hand4Integrity)
hand4Integrityhealth.DisplayDistanceType = "None"
hand4Integrityhealth.Health = 100
hand4Integrityhealth.MaxHealth = 100

Integrity = Instance.new("Part",hand4Integrity)
Integrity.Size = Vector3.new(1,1.5,0.2)
Integrity.Name = "Head"
Integrity.Position = hand1DeterminationPosition.Position
IntegrityMesh = Instance.new("SpecialMesh",Integrity)
IntegrityMesh.MeshId = "rbxassetid://430045961"
IntegrityMesh.Offset = Vector3.new(0.09,0.1,0)
Integrity.BrickColor = BrickColor.new("Institutional white")


IntegrityOrb = Instance.new("Part",Integrity)
IntegrityOrb.Size = Vector3.new(0.3,0.3,0.2)
IntegrityOrb.BrickColor = BrickColor.new("Deep blue")
weld(Integrity,IntegrityOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand4IntegrityPosition,Integrity,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--5--


hand5Braveryhealth = Instance.new("Humanoid",hand5Bravery)
hand5Braveryhealth.DisplayDistanceType = "None"
hand5Braveryhealth.Health = 100
hand5Braveryhealth.MaxHealth = 100


Bravery = Instance.new("Part",hand5Bravery)
Bravery .Size = Vector3.new(1,1.5,0.2)
Bravery .Name = "Head"
Bravery.Position = hand1DeterminationPosition.Position
BraveryMesh = Instance.new("SpecialMesh",Bravery)
BraveryMesh.MeshId = "rbxassetid://430045961"
BraveryMesh.Offset = Vector3.new(0.09,0.1,0)
Bravery.BrickColor = BrickColor.new("Institutional white")

BraveryOrb = Instance.new("Part",Bravery)
BraveryOrb.Size = Vector3.new(0.3,0.3,0.2)
BraveryOrb.BrickColor = BrickColor.new("Deep orange")
weld(Bravery,BraveryOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand5BraveryPosition,Bravery,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end	
p:remove()
--6--

hand6Justicehealth = Instance.new("Humanoid",hand6Justice)
hand6Justicehealth.DisplayDistanceType = "None"
hand6Justicehealth.Health = 100
hand6Justicehealth.MaxHealth = 100

Justice = Instance.new("Part",hand6Justice)
Justice .Size = Vector3.new(1,1.5,0.2)
Justice.Name = "Head"
Justice.Position = hand1DeterminationPosition.Position
JusticeMesh = Instance.new("SpecialMesh",Justice)
JusticeMesh.MeshId = "rbxassetid://430045961"
JusticeMesh.Offset = Vector3.new(0.09,0.1,0)
Justice.BrickColor = BrickColor.new("Institutional white")

JusticeOrb = Instance.new("Part",Justice)
JusticeOrb.Size = Vector3.new(0.3,0.3,0.2)
JusticeOrb.BrickColor = BrickColor.new("New Yeller")
weld(Justice,JusticeOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand6JusticePosition,Justice,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end	
p:remove()
--7--

hand7Kindnesshealth = Instance.new("Humanoid",hand7Kindness)
hand7Kindnesshealth.DisplayDistanceType = "None"
hand7Kindnesshealth.Health = 100
hand7Kindnesshealth.MaxHealth = 100

Kindness = Instance.new("Part",hand7Kindness)
Kindness .Size = Vector3.new(1,1.5,0.2)
Kindness.Name = "Head"
Kindness.Position = hand1DeterminationPosition.Position
KindnessMesh = Instance.new("SpecialMesh",Kindness)
KindnessMesh.MeshId = "rbxassetid://430045961"
KindnessMesh.Offset = Vector3.new(0.09,0.1,0)
Kindness.BrickColor = BrickColor.new("Institutional white")

KindnessOrb = Instance.new("Part",Kindness)
KindnessOrb.Size = Vector3.new(0.3,0.3,0.2)
KindnessOrb.BrickColor = BrickColor.new("Lime green")
weld(Kindness,KindnessOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand7KindnessPosition,Kindness,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end	
p:remove()

PlaySound("GasterTheme", 1, char.Torso, true)

---functions and attacks

function JusAttack()

	local target = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value

	if target ~= nil then

		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)
		local A_1 = {
			getrenv()._G.Pass,
			"KnifeProjectileYellow",
			"Spawn",
			Vector3.new(0, 3000, 0)
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(A_1)
		wait(0.1)

	end
end

--end

for i,v in pairs(game.ReplicatedStorage.RemoteSecurity:GetChildren()) do
			v.Name="Noob"..i
		end
		local personpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		local playerName = game.Players.LocalPlayer.Name
		local Waiter = false
		local player = game.Players.LocalPlayer
		local uis = game:GetService("UserInputService")
		local damage = game.ReplicatedStorage.Remotes.Damage
		local Players = game.Players
		local LocalPlayer = Players.LocalPlayer;
		local u2 = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
		local HumanoidRootPart = u2:WaitForChild("HumanoidRootPart");
		local player = game.Players.LocalPlayer
		local character = player.Character
		local remote = game.ReplicatedStorage.Remotes.Functions
		local pass = getrenv()._G.Pass
		local remote = game.ReplicatedStorage.Remotes["SwordHandler"]
		local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
		local ClientMusicVariable = true
		local remot = game:GetService("ReplicatedStorage").Remotes.Functions
		local LeftCombo = 0
		local TimeToAttack = .9
		local Delayy = .25
		local LastComboCD = 2.2
		local Cooldown = false
		local remote = game.ReplicatedStorage.Remotes.Damage
		local UserId = game.Players.LocalPlayer.UserId
		local SansLastBreathMovesRemote = Instance.new("BindableEvent") or game.Players[game.Players.LocalPlayer.Name].Backpack:FindFirstChild("RemoteFolder")[UserId]

		SansLastBreathMovesRemote.Name = 'SansLastBreathMoves'

		if not(game.Players[game.Players.LocalPlayer.Name].Backpack:FindFirstChild("RemoteFolder"))then 
			local NewRemoteFolder = Instance.new("Folder")
			NewRemoteFolder.Name = "RemoteFolder"
			NewRemoteFolder.Parent = game.Players[game.Players.LocalPlayer.Name].Backpack
			SansLastBreathMovesRemote.Parent = NewRemoteFolder
		end


		SansLastBreathMovesRemote.Event:Connect(function()
			local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			tostring(gettem)
			local epic = game.Workspace[tostring(gettem)]
			local target = epic.Torso.Position
			LeftCombo = LeftCombo + 1
			print(tostring(LeftCombo))

			-- Animations and Attacks
			if LeftCombo == 1 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800629176"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "LightHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = Vector3.new(0,-50,0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 2 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800624938"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "LightHitEffect2", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = Vector3.new(0,-50,0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 3 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800630930"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "LightHitEffect3", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = Vector3.new(0,-50,0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 4 then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4906108508"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
							spawn(function()
					local args = {
                        [1] = {
                            [1] = getrenv()._G.Pass,
                            [2] = "PlaySound",
                            [3] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
                            [4] = game:GetService("Players").LocalPlayer.Character.Head
                        }
                    }
                    local num = math.random(1,180)
                    game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
				end);
							spawn(function()
				local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 1,
["Type"] = "Knockback", 
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
["CameraShake"] = "BigExplosion",
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 180 + Vector3.new(0,2,0),
["CombatInv"] = true,
["Damage"] = 34
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model", "BigSlam", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
end
				end)
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				wait(LastComboCD)
				LeftCombo = 0
			elseif LeftCombo == 100 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				LeftCombo = 0
				print(tostring(LeftCombo)..' Restarted')
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			end




			pcall(function()
				if LeftCombo == 1 then

					warn('Combo 1 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 1 then
							LeftCombo = 0
							warn('Reset LeftCombo 1')
						end
					end)
				elseif LeftCombo == 2 then
					warn('Combo 2 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 2 then
							LeftCombo = 0
							warn('Reset LeftCombo 2')
						end
					end)
				elseif LeftCombo == 3 then
					warn('Combo 3 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 3 then
							LeftCombo = 0
							warn('Reset LeftCombo 3')
						end
					end)
				elseif LeftCombo == 4 then
					warn('Combo 4 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 4 then
						    wait(2.5)
							LeftCombo = 0
							warn('Reset LeftCombo 4')
						end
					end)
					LeftCombo = 100
					wait(1.6)
					LeftCombo = 0
				end
			end)

		end)

		local FireAttack = (function()
			return SansLastBreathMovesRemote:Fire()
		end)

		local Humanoid = u2:WaitForChild("Humanoid")
		function checkIfHurt()
			if not u2:FindFirstChild("Hit") then
				if not u2:FindFirstChild("Debounce") then
					if Humanoid.Health <= 0 then
					else
						return false;
					end;
				end;
			end;
			return true;
		end;
		uis.InputBegan:Connect(function(inp)
			checkIfHurt()
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				if uis:GetFocusedTextBox() == nil then
					if Cooldown then return end
					spawn(function()
						Cooldown = true
						wait(Delayy)
						Cooldown = false
					end)

					FireAttack()
					warn('Fired Remote')
				end
			end;
		end)
		
            local UIS = game:GetService("UserInputService")
            local PressedKey = false

            UIS.InputBegan:Connect(function(Input, IsTyping)
                    if IsTyping then 
                       return
                elseif Input.KeyCode == Enum.KeyCode.F then
                PressedKey = true
             while PressedKey == true do 
                wait()
             local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeShield",
                    [3] = true
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            end
            end
            end)
            --
            UIS.InputEnded:Connect(function(Input,IsTyping)
                    if IsTyping then
                        return
                elseif Input.KeyCode == Enum.KeyCode.F then
                PressedKey = false
             local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeShield",
                    [3] = false 
                }
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
            end
            end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.One then
JusAttack()
    end                   	
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "2" then
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
r2 = m.Hit*CFrame.new(0,4,0)
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
amm = 5
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectile", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectile' then
am = am + 1
val.Value = am
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'KnifeSlashProjectile' then
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
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
end
wait(.5)
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
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectile", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
end
end)
wait(3)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "3" then
wait()
wait(0.1)
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
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://0'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
--char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
--wait(.1)
amm = 5
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
local tabeeas = {}
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileDark' then
    table.insert(tabeeas,pp)
    spawn(function()
   local rp
   local yeaeoase = pp
rp = yeaeoase.Changed:Connect(function(pr)
    if pr == "Anchored" then
if not pr.Anchored then
am = am + 1
val.Value = am
rp:Disconnect()
end
    end
end)
end)
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm*3 then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'KnifeSlashProjectileDark' then
    v:WaitForChild('BodyVelocity'):Destroy()
    v:WaitForChild('ParticleEmitter'):Destroy()
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
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,40,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,40,z)
end
end
wait(.5)
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
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-1,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
k:stop()
end)
wait()
end
end
end)
wait(3)
for _,v in pairs(tabeeas) do
    v:Destroy()
    end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "4" then
wait()
wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4562533193"
		local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k2:Play()
wait(0.5)
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
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://3197645614'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
--char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
--wait(.1)
amm = 5
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectilePurple", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectilePurple' then
am = am + 1
val.Value = am
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm*3 then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'KnifeSlashProjectilePurple' then
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
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(30,70,180)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,90,z)
end
end

wait(.5)
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
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectilePurple", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
k:stop()
end)
wait(.1)
end
end
end)
wait(3)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false
end
end)

local pass = getrenv()._G.Pass
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spam()

	local target = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value

	local A_1 = pass
	local A_2 = target
	local A_3 = {
		["HitTime"] = 1,
		["Type"] = "Knockback", 
		["HitEffect"] = "KnifeHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
		["CombatInv"] = true,
		["Velocity"] = Vector3.new(0, -1, 0),
		["Damage"] = "NaN"
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.Z then

		spam()

	end

end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "5" then
_G.cdr = false
    if _G.cdr then
        return
    end
    _G.cdr = true
    pass = getrenv()._G.Pass
    player = game.Players.LocalPlayer
    m = player:GetMouse()
    local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
    if LockOn then
        target = LockOn
        r2 = target.HumanoidRootPart.CFrame
    elseif not LockOn then
        r2 = m.Hit * CFrame.new(0, 4, 0)
    end
    char = player.Character
    h = char.Humanoid
local num = math.random(1,180)
local num = math.random(1,180)
    amm = 7
    for i = 1, amm, 1 do
        spawn(
            function()
                local A_1 = {
                    [1] = pass,
                    [2] = "KnifeProjectileOrange",
                    [3] = "Spawn",
                    [4] = r2.p
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                Event:InvokeServer(A_1)
            end
        )
    end
    am = 6
    val = Instance.new("NumberValue", player)
    val.Name = "KnifeSlashes Amount"
    local tabeeas = {}
    detect =
        char.Attacks.ChildAdded:Connect(
            function(pp)
            if pp.Name == "KnifeSlashProjectileOrange" then
                table.insert(tabeeas, pp)
                spawn(
                    function()
                        local rp
                        local yeaeoase = pp
                        rp =
                            yeaeoase.Changed:Connect(
                                function(pr)
                                if pr == "Anchored" then
                                    if not pr.Anchored then
                                        am = am + 1
                                        val.Value = am
                                        rp:Disconnect()
                                    end
                                end
                            end
                            )
                    end
                )
            end
        end
        )
    detect2 =
        val:GetPropertyChangedSignal("Value"):Connect(
    function()
        if val.Value == amm * 3 then
            tab = {}
            tab2 = {}
            for _, v in pairs(char.Attacks:GetChildren()) do
                if v.Name == "KnifeSlashProjectileOrange" then
                    v:WaitForChild("BodyVelocity"):Destroy()
                    v:WaitForChild("ParticleEmitter"):Destroy()
                    v.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, -2)
                    v1 = Instance.new("BodyPosition", v)
                    fol = Instance.new("Folder", v1)
                    v1.Name = "Client"
                    v1.MaxForce = Vector3.new(1, 1, 1) * 100000
                    v1.D = 1000
                    v1.P = 30000
                    v2 = Instance.new("BodyGyro", v)
                    fol = Instance.new("Folder", v2)
                    v2.Name = "Client"
                    v2.MaxTorque = Vector3.new(1, 1, 1) * 10000
                    v2.D = 0
                    v2.P = 3000
                    v2.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                    x = math.random(-20, 20)
                    z = math.random(-20, 20)
                    y = math.random(10, 40)
                    v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 10, 0)
                    table.insert(tab, v1)
                    table.insert(tab2, v)
                    v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, y, z)
                end
            end
            for i = 1, #tab do
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
                x = math.random(-20, 20)
                z = math.random(-20, 20)
                tab[i].D = 150
                tab[i].Position = r2.p + Vector3.new(0, -1, 0)
                tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
                for i = 1,99999999999999 do
                spawn(
                    function()
                        local A_1 = {
                            [1] = pass,
                            [2] = "KnifeProjectileOrange",
                            [3] = "Hit",
                            [4] = tab2[i],
                            [5] = r2,
                            [6] = r1
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
                        Event:InvokeServer(A_1)
                    end
                )
                wait()
                end
            end
        end
        end
    )
    wait(5)
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectileOrange' then
v:Destroy()
end
end
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "6" then
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "BladeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
wait(0.5)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "BladeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
wait(0.5)
for i, v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire(
        {
            "Model",
            "KnifeHitEffect22",
            game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
        }
    )
end
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "BladeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, 10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
              local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "AreaAttack",
                    [3] = "Start",
                },
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))  
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateExplosion", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.2)
                local A_1 = getrenv()._G.Pass
                local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BiggerBurstEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["HitTime"] = 1,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                    ["Damage"] = 0
                }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(0.2)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateExplosion", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end 
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "7" then
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "PurpleBurst", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
wait(0.2)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateExplosion", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
    
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 175, 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
	end
end)
	
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)

local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects
wait(0.2)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, 5, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects 
wait(0.2)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "HateExplosion", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, 100, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
	end
end) 

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "LET US HAVE SOME FUN", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Knockback",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 2, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 20
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
                local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "You are nothing",
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,70,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)  
                wait(0.3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,17,0))*5.30 -- change the velocity
                wait(0.5)
                vel:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 73
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                wait(0.5)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.RecoveringWall,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(0,-140,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
wait(2)
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "v" then
wait()
wait(2)
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
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://0'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
--char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
--wait(.1)
amm = 5
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
local tabeeas = {}
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileDark' then
    table.insert(tabeeas,pp)
    spawn(function()
   local rp
   local yeaeoase = pp
rp = yeaeoase.Changed:Connect(function(pr)
    if pr == "Anchored" then
if not pr.Anchored then
am = am + 1
val.Value = am
rp:Disconnect()
end
    end
end)
end)
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm*3 then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'KnifeSlashProjectileDark' then
    v:WaitForChild('BodyVelocity'):Destroy()
    v:WaitForChild('ParticleEmitter'):Destroy()
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
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,40,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,40,z)
end
end
wait(.5)
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
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-1,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
k:stop()
end)
wait()
end
end
end)
wait(3)
for _,v in pairs(tabeeas) do
    v:Destroy()
    end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false
end
end)

local pass = getrenv()._G.Pass
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spamk()

		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Model", "SansLineBones", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        end

	local target = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value

	local A_1 = pass
	local A_2 = target
	local A_3 = {
		["HitTime"] = 1,
		["Type"] = "Knockback", 
		["HitEffect"] = "KnifeHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
		["CombatInv"] = true,
		["Velocity"] = Vector3.new(0, -1, 0),
		["Damage"] = 40
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

function staydown()
    for i = 1,25 do
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
        ["Velocity"] = Vector3.new(0,-1,0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Crack,
        ["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
end
end

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "b" then
staydown()
                local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Game over...",
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
while wait(0.2) do
spamk()
end
end
end)

local player = game.Players.LocalPlayer.Character
local Aura = game.ReplicatedStorage.Resources.Character.Auras.PowerUp

a = Aura:Clone()
a.Parent = player
wait(1)
player.PowerUp.Head.BodyAura.Parent = player.Head
player.PowerUp["Left Arm"].BodyAura.Parent = player["Left Arm"]
player.PowerUp["Right Arm"].BodyAura.Parent = player["Right Arm"]
player.PowerUp["Right Leg"].BodyAura.Parent = player["Right Leg"]
player.PowerUp["Left Leg"].BodyAura.Parent = player["Left Leg"]
player.PowerUp["Torso"].BodyAura.Parent = player["Torso"]

        local p = game.Players.LocalPlayer
        local char = p.Character
        local mouse = p:GetMouse()
        local larm = char["Left Arm"]
        local rarm = char["Right Arm"]
        local lleg = char["Left Leg"]
        local rleg = char["Right Leg"]
        local hed = char.HumanoidRootPart
        local torso = char.Torso
        local hum = char.Humanoid
        local root = char.HumanoidRootPart
        local rs = game:GetService("RunService").RenderStepped
        local new = Instance.new
        local v3 = Vector3.new
        local ns = NumberSequence.new
        local nr = NumberRange.new
        local bc = BrickColor.new
        local cf = CFrame.new
        local cfa = CFrame.Angles
        local rad = math.rad

        a1 = new("Part", char)
        a1.Name = "H1"
        a1.BrickColor = BrickColor.new("White")
        a1.Material = "Neon"
        a1.Transparency = 0
        aa1 = new("SpecialMesh", a1)
        aa1.MeshType = "FileMesh"
        aa1.Offset = v3(7, 3, -0.1)
        aa1.Scale = v3(0.1, 0.1, 0.1)
        aa1.MeshId = "rbxassetid://2267134290"
        aaa1 = new("Weld", a1)
        aaa1.Part0 = hed
        aaa1.Part1 = a1
        aaa1.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2 = new("Part", char)
        a2.Name = "H2"
        a2.BrickColor = BrickColor.new("White")
        a2.Material = "Neon"
        a2.Transparency = 0
        aa2 = new("SpecialMesh", a2)
        aa2.MeshType = "FileMesh"
        aa2.Offset = v3(9.1, 2.01, -0.2)
        aa2.Scale = v3(0.07, 0.07, 0.07)
        aa2.MeshId = "rbxassetid://2267146284"
        aaa2 = new("Weld", a2)
        aaa2.Part0 = hed
        aaa2.Part1 = a2
        aaa2.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3 = new("Part", char)
        a3.Name = "H3"
        a3.BrickColor = BrickColor.new("White")
        a3.Material = "Neon"
        a3.Transparency = 0
        aa3 = new("SpecialMesh", a3)
        aa3.MeshType = "FileMesh"
        aa3.Offset = v3(5, 2.01, -0.2)
        aa3.Scale = v3(0.07, 0.07, 0.07)
        aa3.MeshId = "rbxassetid://2267147917"
        aaa3 = new("Weld", a3)
        aaa3.Part0 = hed
        aaa3.Part1 = a3
        aaa3.C0 = CFrame.Angles(0, math.rad(0), 0)

        a4 = new("Part", char)
        a4.Name = "H4"
        a4.BrickColor = BrickColor.new("White")
        a4.Material = "Neon"
        a4.Transparency = 0
        aa4 = new("SpecialMesh", a4)
        aa4.MeshType = "FileMesh"
        aa4.Offset = v3(7, 3, -0.1)
        aa4.Scale = v3(0.1, 0.1, 0.1)
        aa4.MeshId = "rbxassetid://2267130588"
        aaa4 = new("Weld", a4)
        aaa4.Part0 = hed
        aaa4.Part1 = a4
        aaa4.C0 = CFrame.Angles(0, math.rad(0), 0)

        a5 = new("Part", char)
        a5.Name = "H5"
        a5.BrickColor = BrickColor.new("White")
        a5.Material = "Neon"
        a5.Transparency = 0
        aa5 = new("SpecialMesh", a5)
        aa5.MeshType = "FileMesh"
        aa5.Offset = v3(7, 3, -0.1)
        aa5.Scale = v3(0.1, 0.1, 0.1)
        aa5.MeshId = "rbxassetid://2267130588"
        aaa5 = new("Weld", a5)
        aaa5.Part0 = hed
        aaa5.Part1 = a5
        aaa5.C0 = CFrame.Angles(0, math.rad(0), 0)

        a1e = new("Part", char)
        a1e.Name = "H6"
        a1e.BrickColor = BrickColor.new("White")
        a1e.Material = "Neon"
        a1e.Transparency = 0
        aa1e = new("SpecialMesh", a1e)
        aa1e.MeshType = "FileMesh"
        aa1e.Offset = v3(-7, 3, -0.1)
        aa1e.Scale = v3(0.1, 0.1, 0.1)
        aa1e.MeshId = "rbxassetid://2267134290"
        aaa1e = new("Weld", a1e)
        aaa1e.Part0 = hed
        aaa1e.Part1 = a1e
        aaa1e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a2e = new("Part", char)
        a2e.Name = "H7"
        a2e.BrickColor = BrickColor.new("White")
        a2e.Material = "Neon"
        a2e.Transparency = 0
        aa2e = new("SpecialMesh", a2e)
        aa2e.MeshType = "FileMesh"
        aa2e.Offset = v3(-5, 2.01, -0.2)
        aa2e.Scale = v3(0.07, 0.07, 0.07)
        aa2e.MeshId = "rbxassetid://2267146284"
        aaa2e = new("Weld", a2e)
        aaa2e.Part0 = hed
        aaa2e.Part1 = a2e
        aaa2e.C0 = CFrame.Angles(0, math.rad(0), 0)

        a3e = new("Part", char)
        a3e.Name = "H8"
        a3e.BrickColor = BrickColor.new("White")
        a3e.Material = "Neon"
        a3e.Transparency = 0
        aa3e = new("SpecialMesh", a3e)
        aa3e.MeshType = "FileMesh"
        aa3e.Offset = v3(-9.1, 2.01, -0.2)
        aa3e.Scale = v3(0.07, 0.07, 0.07)
        aa3e.MeshId = "rbxassetid://2267147917"
        aaa3e = new("Weld", a3e)
        aaa3e.Part0 = hed
        aaa3e.Part1 = a3e
        aaa3e.C0 = CFrame.Angles(0, math.rad(0), 0)
        
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects
  
for i, part in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do
          part.Color = Color3.fromRGB(0,0,0)
    end

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Created By MAnitosik#0548", Text = "It is a free script"})

while true do
wait()
wait(0.2)
wfc = game:GetService("Players").LocalPlayer.Backpack:WaitForChild('Main')
for i,v in pairs(wfc:GetDescendants()) do
    if v.Name:match("Moves") then
    test = v
end
end
test1 = test['ModuleScript']['Animations']
for i,v in pairs(test:GetDescendants()) do
 
      if v.Name:match("Light") then
    test = v
end
end

SlashColor1 = Color3.fromRGB(0,0,0)

            local A_1 =  {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = test, 
                [4] = SlashColor1, 
                [5] = CFrame.new(0,2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
          }
          local Event = game:GetService("ReplicatedStorage").Remotes.Events
          Event:FireServer(A_1)
end