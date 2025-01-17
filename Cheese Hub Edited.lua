library = loadstring(game:HttpGet("https://gist.githubusercontent.com/LiterallyATrueClown/9d1f8f7798e9d3a82ab69859ff6dbf7a/raw/171d0a75e9b57b6698523b57bf5f84cc64a80a7c/special%2520gui%2520lib", true))()
hubname = "                                                  Cheese Hub V1.8"
 venyx = library.new(hubname)
themes = {
  Background = Color3.fromRGB(24, 24, 24), 
  Glow = Color3.fromRGB(0, 255, 255), 
  Accent = Color3.fromRGB(0, 0, 0), 
  LightContrast = Color3.fromRGB(30, 30, 30), 
  DarkContrast = Color3.fromRGB(0, 0, 0),  
  TextColor = Color3.fromRGB(0, 255, 255)
}
uiPages = {}
uiSecs = {}
varbs = {}
uiPages.page = venyx:addPage("Ui", 5012544693)
uiPages.page2 = venyx:addPage("Main", 5012544693)
uiPages.page3 = venyx:addPage("Ct Char", 5012544693)
uiPages.page4 = venyx:addPage("Ct Atks", 5012544693)
uiPages.page7 = venyx:addPage("Mics Part 1", 5012544693)
uiPages.page9 = venyx:addPage("Mics Part 2", 5012544693)
uiPages.page8 = venyx:addPage("Custom Things", 5012544693)
uiPages.output1 = venyx:addPage("Ct Char Output", 5012544693)
uiPages.page5 = venyx:addPage("Credits", 5012544693)

uiSecs.stuffspart2 = uiPages.page9:addSection("Server Instance Id Copier")
uiSecs.stuffspart3 = uiPages.page9:addSection("Server Instance Id Joining")
uiSecs.stuffspart4 = uiPages.page9:addSection("RTX Stuffs")
uiSecs.stuffspart5 = uiPages.page9:addSection("Custom flying slashes")
uiSecs.stuffs = uiPages.page7:addSection("Another Stuffs")
uiSecs.susmap1 = uiPages.page7:addSection("Secret map in soulshatters")
uiSecs.ui = uiPages.page:addSection("Graphical Interface")
uiSecs.place = uiPages.page:addSection("Game")
uiSecs.time = uiPages.page:addSection("UTC Time")
uiSecs.place3 = uiPages.page:addSection("Music")
uiSecs.main = uiPages.page2:addSection("Main")
uiSecs.main5 = uiPages.page2:addSection("Day/Night Cycle")
uiSecs.main4 = uiPages.page2:addSection("Teleport to other player")
uiSecs.main2 = uiPages.page2:addSection("Troll Scripts")
uiSecs.custom = uiPages.page3:addSection("In Menu")
uiSecs.custom1 = uiPages.page3:addSection("Undertale Frisk")
uiSecs.custom2 = uiPages.page3:addSection("Asriel")
uiSecs.custom3 = uiPages.page3:addSection("XTale")
uiSecs.custom4 = uiPages.page3:addSection("Old Sans")
uiSecs.custom5 = uiPages.page3:addSection("Glitchtale Chara")
uiSecs.custom7 = uiPages.page3:addSection("Glitchtale Frisk")
uiSecs.custom7 = uiPages.page3:addSection("Glitchtale Betty")
uiSecs.Credit = uiPages.page5:addSection("Credits")
uiSecs.asriel = uiPages.page4:addSection("Undertale Ariel")
uiSecs.betty = uiPages.page4:addSection("Glitchtale Betty")
uiSecs.undyne = uiPages.page4:addSection("Glitchtale Undyne")
uiSecs.place2 = uiPages.page4:addSection("Glitchtale Chara")
uiSecs.sschara = uiPages.page4:addSection("StoryShift Chara")
uiSecs.delta = uiPages.page4:addSection("Delta Sans")
uiSecs.frisk = uiPages.page4:addSection("Undertale Frisk")
uiSecs.nsans = uiPages.page4:addSection("Undertale New Sans")
uiSecs.osans = uiPages.page4:addSection("Undertale Old Sans")
uiSecs.place0 = uiPages.page4:addSection("XTale")
uiSecs.place6 = uiPages.page4:addSection("Others")
uiSecs.place1 = uiPages.page7:addSection("Places")
uiSecs.ctthings2 = uiPages.page8:addSection("Custom Name Color")
uiSecs.ctthings3 = uiPages.page8:addSection("Custom Name Text")
uiSecs.notifier = uiPages.page7:addSection("Enemy Notifier")
uiSecs.ctskin = uiPages.page7:addSection("Custom Skins")
uiSecs.opstuffs = uiPages.page7:addSection("OP Stuff")
uiSecs.stuffspart6 = uiPages.page9:addSection("Damage Module")

uiSecs.stuffspart6:addSlider("Hit Time", 0, 0, 1, function(val)
 hittime = val
end)

uiSecs.stuffspart6:addSlider("Damage", 0, 0, 40, function(val)
 dmg = val
end)

uiSecs.stuffspart6:addSlider("Vector X", 0, 0, 100, function(val)
 vtx = val
end)

uiSecs.stuffspart6:addSlider("Vector Y", 0, 0, 100, function(val)
 vty = val
end)

uiSecs.stuffspart6:addSlider("Vector Z", 0, 0, 100, function(val)
 vtz = val
end)

uiSecs.stuffspart6:addDropdown("Type", {"Normal", "Knockback"}, function(val)
 typeee = val
end)

local hiteffectlist = {
"LightHitEffect",
"LightHitEffect2",
"LightHitEffect3",
"HeavyHitEffect",
"KnifeHitEffect",
"BurstEffect",
"BiggerBurstEffect",
"YellowHitEffect"
}

uiSecs.stuffspart6:addDropdown("Hit Effect", hiteffectlist, function(val)
 hiteffect = val
end)

local soundlist = {}
for i, v in pairs(game.ReplicatedStorage.Sounds:GetChildren()) do
table.insert(soundlist, v.Name)
end  
 uiSecs.stuffspart6:addDropdown("Sound", soundlist, function(val)
   hiteffect = val
 end)

uiSecs.stuffspart6:addKeybind("Use Damage Module", nil, function()
 if game.Players.LocalPlayer.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then return end
 local realdmg
 if typeee == "Normal" then
     if dmg > 10 then
         realdmg = 10
     else
         realdmg = dmg
     end
 else
     realdmg = dmg
 end
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value
local A_3 = {
 ["HitTime"] = hittime,
 ["Type"] = typeee, 
 ["HitEffect"] = hiteffect,
 ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,  
 ["Sound"] = game.ReplicatedStorage.Sounds:FindFirstChild(sound),
 ["Velocity"] = Vector3.new(vtx,vty,vtz),
 ["Damage"] = realdmg
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end)

PlayerName = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(PlayerName, v.Name)
end

uiSecs.stuffspart5:addKeybind(
"Everywhere slashes",
nil,
function()
 pass = getrenv()._G.Pass
 player = game.Players.LocalPlayer
 m = player:GetMouse()
 LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
 if LockOn then 
 target = LockOn
 r2 = target.HumanoidRootPart.CFrame
 elseif not LockOn then
 r2 = m.Hit
 end
 char = player.Character
 h = char.Humanoid
 amm = 20
 for i = 1,amm,1 do
 spawn(function()
A_1 =  {
       [1] = pass,
       [2] = "KnifeProjectileDarkRed", 
       [3] = "Spawn", 
       [4] = r2.p
 }
Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
 Event:InvokeServer(A_1)
 end)
 end
 am = 0
 val = Instance.new('NumberValue',player)
 val.Name = 'KnifeSlashes Amount'
cooltable = {}
 detect = char.Attacks.ChildAdded:Connect(function(pp)
 if pp.Name == 'KnifeSlashProjectileDark' then
     table.insert(cooltable,pp)
     spawn(function()
  local rp
  yeaeoase = pp
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
 x = math.random(-10,10)*10
 z = math.random(-10,10)*10
 v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
 table.insert(tab,v1)
 table.insert(tab2,v)
 v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,150,z)
 end
 end
 wait(1)
 for i = 1,#tab do
 m.TargetFilter = game.workspace.Terrain
LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
 if LockOn then 
 target = LockOn
 r2 = target.HumanoidRootPart.CFrame
 r1 = target.HumanoidRootPart
 elseif not LockOn then
 r2 = m.Hit
 r1 = m.Target
 end
 x = math.random(-1500,1500)
 z = math.random(-1500,1500)
 tab[i].D = 0
 tab[i].Position = r2.p + Vector3.new(0,10,0)
 tab2[i].CFrame = r2*CFrame.new(x,300,z)
 spawn(function()
 for _,v in pairs(cooltable) do
 A_1 =  {
       [1] = pass, 
       [2] = "KnifeProjectileDarkRed", 
       [3] = "Hit", 
       [4] = v, 
       [5] = r2, 
       [6] = r1
 }
Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
 Event:InvokeServer(A_1)
 end
 end)
 end
 end
 end)
end)

uiSecs.stuffspart5:addKeybind(
"Summon a pillar of slashes",
nil,
function()
 pass = getrenv()._G.Pass
 player = game.Players.LocalPlayer
 m = player:GetMouse()
LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
 if LockOn then 
 target = LockOn
 r2 = target.HumanoidRootPart.CFrame
 elseif not LockOn then
 r2 = m.Hit
 end
 char = player.Character
 h = char.Humanoid
 amm = 20
 for i = 1,amm,1 do
 spawn(function()
A_1 =  {
       [1] = pass,
       [2] = "KnifeProjectileDarkRed", 
       [3] = "Spawn", 
       [4] = r2.p
 }
Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
 Event:InvokeServer(A_1)
 end)
 end
 am = 0
 val = Instance.new('NumberValue',player)
 val.Name = 'KnifeSlashes Amount'
cooltable = {}
 detect = char.Attacks.ChildAdded:Connect(function(pp)
 if pp.Name == 'KnifeSlashProjectileDark' then
     table.insert(cooltable,pp)
     spawn(function()
  local rp
  yeaeoase = pp
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
 x = math.random(-10,10)*10
 z = math.random(-10,10)*10
 v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
 table.insert(tab,v1)
 table.insert(tab2,v)
 v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,150,z)
 end
 end
 wait(1)
 for i = 1,#tab do
     m.TargetFilter = game.workspace.Terrain
LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
 if LockOn then 
 target = LockOn
 r2 = target.HumanoidRootPart.CFrame
 r1 = target.HumanoidRootPart
 elseif not LockOn then
 r2 = m.Hit
 r1 = m.Target
 end
 x = math.random(-30,30)
 z = math.random(-30,30)
 tab[i].D = 0
 tab[i].Position = r2.p + Vector3.new(0,10,0)
 tab2[i].CFrame = r2*CFrame.new(x,300,z)
 spawn(function()
 for _,v in pairs(cooltable) do
A_1 =  {
       [1] = pass, 
       [2] = "KnifeProjectileDarkRed", 
       [3] = "Hit", 
       [4] = v, 
       [5] = r2, 
       [6] = r1
 }
Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
 Event:InvokeServer(A_1)
 end
 end)
 end
 end
 end)
end)

uiSecs.stuffspart5:addKeybind(
"Summon ???? slashes(idk)",
nil,
function()
 pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
char = player.Character
h = char.Humanoid
amm = 20
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
local cooltable = {}
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileDark' then
   table.insert(cooltable,pp)
   spawn(function()
local rp
yeaeoase = pp
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
x = math.random(-10,10)*10
z = math.random(-10,10)*10
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,150,z)
end
end
wait(1)
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
x = math.random(-100,100)
z = math.random(-100,100)
tab[i].D = 0
tab[i].Position = r2.p + Vector3.new(0,-1,0)
tab2[i].CFrame = r2*CFrame.new(x,100,z)
spawn(function()
for _,v in pairs(cooltable) do
local A_1 =  {
     [1] = pass, 
     [2] = "KnifeProjectileDarkRed", 
     [3] = "Hit", 
     [4] = v, 
     [5] = r2, 
     [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)
end
end
end)
end)

uiSecs.stuffspart5:addKeybind(
"Clear slashes",
nil,
function()
game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
end)

uiSecs.stuffspart4:addButton(
"Cheeze RTX V4",
function()
function rtx()
 light = game:GetService("Lighting")
   light:ClearAllChildren()
   Instance.new("Sky", light)
   Instance.new("ColorCorrectionEffect", light)
   Instance.new("BloomEffect", light)
   Instance.new("BlurEffect", light)
   light.Brightness = 2
   light.ColorShift_Bottom = Color3.fromRGB(0,0,0)
   light.ColorShift_Top = Color3.fromRGB(118,117,101)
   light.Ambient = Color3.fromRGB(112,112,112)
   light.GeographicLatitude = 45
   light.OutdoorAmbient = Color3.fromRGB(141,141,141)
   light.ShadowSoftness = 0.1
   light.Blur.Enabled = true
   light.Blur.Size = 0
   light.EnvironmentSpecularScale = 1
   light.EnvironmentDiffuseScale = 0.343
   light.ExposureCompensation = 0.34
   light.Bloom.Size = 17
   light.Bloom.Intensity = 2
   light.Bloom.Threshold = 1
   light.GlobalShadows = true
   light.ColorCorrection.Brightness = 0
   light.ColorCorrection.Contrast = 0.2
   light.ColorCorrection.Saturation = 1.5
   light.ColorCorrection.TintColor = Color3.fromRGB(255,252,224)
 ray = Instance.new("SunRaysEffect", light)
   ray.Intensity = 0.08
   ray.Spread = 0.05
   light.Sky.SkyboxBk = "http://www.roblox.com/asset/?id=91458024"
   light.Sky.SkyboxDn = "http://www.roblox.com/asset/?id=91457980"
   light.Sky.SkyboxFt = "http://www.roblox.com/asset/?id=91458024"
   light.Sky.SkyboxLf = "http://www.roblox.com/asset/?id=91458024"
   light.Sky.SkyboxRt = "http://www.roblox.com/asset/?id=91458024"
   light.Sky.SkyboxUp = "http://www.roblox.com/asset/?id=91458002"
   light.Sky.SunAngularSize = 4
 atmos = Instance.new("Atmosphere", light)
   atmos.Color = Color3.fromRGB(216,255,250)
   atmos.Decay = Color3.fromRGB(92,60,13)
   atmos.Glare = 0.68
   atmos.Haze = 0.36
   atmos.Density = 0.348
   atmos.Offset = 0.199
for i, v in pairs(
game:GetService("Workspace"):GetDescendants()) do
if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Union") then
v.Reflectance = 0.1
end
end
end
rtx()
game.Lighting.ClockTime = 17
while wait(35) do
rtx()
end
end)

uiSecs.stuffspart2:addButton("Copy server's id to clipboard", function()
 setclipboard('game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)') 
   venyx:Notify("Cheese Hub", "Your Server Id Invite Script has been copied to your clipboard")   
end)

uiSecs.stuffspart2:addButton("Save server's id into a file", function()
 writefile("ServerIdCheeseHub.lua", 'game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'", game.Players.LocalPlayer)')
 venyx:Notify("Cheese Hub", "Your Server Id Invite Script has been saved into a file in your executor's workspace folder")   
end)

uiSecs.stuffspart2:addButton("Join the saved server", function()
venyx:Notify("Cheese Hub", "You are being teleported to your server")   
local a = readfile("ServerIdCheeseHub.lua")
loadstring(a)()
end)

uiSecs.stuffspart3:addTextbox(
"Server Instance Id?",
"ServerId goes here",
function(ok)
ko = ok
end
)

uiSecs.stuffspart3:addTextbox(
"Game Id ?",
"GameId goes here",
function(ok1)
ko1 = ok1
end
)

uiSecs.stuffspart3:addButton("Join the server", function()
venyx:Notify("Cheese Hub", "You are being teleported to your server")   
game:GetService("TeleportService"):TeleportToPlaceInstance(ko1, ko, game.Players.LocalPlayer)
end)

uiSecs.custom5:addButton("The Unnamed one", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Shinichi-Shinici/45b2d4284da675de78d41efc578bcbde/raw/9f644086e2907790c23b5acc8f2e5ff1463ea4bc/The%2520Named%25201", true))()
end)

uiSecs.custom2:addButton("Deku", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Shinichi-Shinici/5a142325eba8264121dc45ecc65697f1/raw/c6dd3b65ddffef6401eeeb32dc0a65dee66ca794/Duke",true))()
end)

uiSecs.main4:addDropdown(
"Choose a player to teleport",
PlayerName,
function(va)
va2 = va
end
)

uiSecs.main4:addButton(
"Teleport to them",
function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game.Workspace[va2].HumanoidRootPart.CFrame * CFrame.new(0, -3, 0)
end
)
uiSecs.main4:addButton(
"Refresh",
function()
PlayerName = {}
PlayerName:Clear()
for i, v in pairs(game.Players:GetChildren()) do
table.insert(PlayerName, v.Name)
end
end
)

uiSecs.notifier:addTextbox(
"Ur enemy's name here",
"Enemy's Name",
function(va)
va1 = va
end
)

uiSecs.notifier:addButton(
"Start Checking To Notify Your Enemy If They Joined Your Game",
function()
game:GetService("Players").PlayerAdded:Connect(
function(player)
if player.Name == va1 then
venyx:Notify("Cheese Hub", va1 .. "has joined your game! Now go hunt him down!")
end
end
)
end
)

uiSecs.susmap1:addButton(
"Add the secret house(Non-FE)",
function()
local newmap = game:GetService("ReplicatedStorage").Resources.Baseplate
local newmap2 = newmap:Clone()
newmap2.Name = "Clown's House"
newmap2.Parent = game:GetService("Workspace").Map
end
)

uiSecs.susmap1:addButton(
"Add the cherry blossom map(Non-FE)",
function()
local map = game:GetObjects("rbxassetid://8567856289")[1]
workspace.Terrain:Clear()
map.Parent = workspace
map.Name = "Kyuti's Cherry Blossom Map"
end
)

uiSecs.susmap1:addButton(
"Add the Undertale map(Non-FE)",
function()
 local map = game:GetObjects("rbxassetid://8957384604")[1]
 for i,v in pairs(map:GetChildren()) do
 v.Parent = game.Workspace
 end
end
)

uiSecs.susmap1:addButton(
"Teleporting Gui For Undertale Map",
function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/LiterallyATrueClown/ae7e7c379ee6f0da4ba6cc53be888aa9/raw/458b480ff457ce1c3aefa5f9fa84026a1775a449/Undertale%2520Gui", true))()
end
)

uiSecs.main5:addSlider(
"Day/Night Cycle",
10,
0,
24,
function(time)
game.Lighting.ClockTime = time
end
)

uiSecs.stuffs:addButton(
"Bypass anti cheat walkspeed/runspeed",
function()
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
local b = Instance.new("BoolValue", char)
b.Name = "Battling"
end)
if game.Players.LocalPlayer.Character then
local b = Instance.new("BoolValue", game.Players.LocalPlayer.Character)
b.Name = "Battling"
end
end
)

uiSecs.stuffs:addSlider(
"Walk Speed",
0,
0,
1000,
function(value)
   game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = value
end
)

uiSecs.stuffs:addSlider(
"Run Speed",
0,
0,
2000,
function(value)
       game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = value
end
)

uiSecs.betty:addKeybind(
"Betty True Power Slashes",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Move1",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Betty True Power Combat Grab Attack",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "CombatGrab"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Betty Grab(Normal)",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KumuGrab",
[3] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addButton(
"Betty Kumu Fuse(Spamable)",
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KumuFused"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
wait(1)
game.Players.LocalPlayer.Character.Transformed:Destroy()
end
)

uiSecs.betty:addKeybind(
"Rhabdophobia",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Rhabdophobia"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"True Power Explosion",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettyGroundBlast"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Heavy Dash Slash 1",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Move4",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Heavy Dash Slash 2",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Move5"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Dash Slash",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ScytheDash"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Soul Steal",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"True Power Punch",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Move3"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.betty:addKeybind(
"Dark Pink Projective",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettySpikeProjectile",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettySpikeProjectile",
[3] = "SpawnTwo"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettySpikeProjectile",
[3] = "Release"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.ctthings3:addTextbox(
"Put Your Name Here",
"Name goes here",
function(txt)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.Text = txt
end
)

uiSecs.ctthings2:addColorPicker(
"The color of your name",
Color3.new(255, 255, 255),
function(name)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.TextColor3 = name
end
)

uiSecs.ctthings3:addTextbox(
"Put Your Text Here",
"Fake attack value goes here",
function(txt)
local player = game.Players.LocalPlayer
local plrGui = player:WaitForChild("PlayerGui")
local ui1 = plrGui:WaitForChild("UI")
local ui = ui1:WaitForChild("Ui")
ui.Info.Attack.Text = "Attack: " .. txt
end
)

uiSecs.ctthings3:addTextbox(
"Put Your Text Here",
"Fake defense value goes here",
function(txt)
local player = game.Players.LocalPlayer
local plrGui = player:WaitForChild("PlayerGui")
local ui1 = plrGui:WaitForChild("UI")
local ui = ui1:WaitForChild("Ui")
ui.Info.Defense.Text = "Defense: " .. txt
end
)

uiSecs.ctthings2:addColorPicker(
"The color of your stam bar",
Color3.new(255, 255, 255),
function(clr)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = clr
end
)

uiSecs.ctthings2:addColorPicker(
"The color of your mana bar",
Color3.new(255, 255, 255),
function(clr)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = clr
end
)

uiSecs.ctthings2:addColorPicker(
"The color of your chat box",
Color3.new(255, 255, 255),
function(clr)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
clr
end
)

uiSecs.delta:addKeybind(
"Block Breaker",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GuardBreak"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.delta:addKeybind(
"Bone 1",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Bones1",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.delta:addKeybind(
"Bone 2",
nil,
function()
 if game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value then
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Bones2",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end
end,
function()
end
)

uiSecs.delta:addKeybind(
"Blaster 1",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.delta:addKeybind(
"Blaster 2",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.delta:addKeybind(
"Blaster 3",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters3"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.delta:addKeybind(
"Blaster 4(no need to hold)",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters4"
}
local Event = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"Constant Knife",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Knives",
[3] = "ConstantSpawn",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"Knifes Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Knives",
[3] = "Special1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"1 Blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChaosBusterBlasters",
[3] = "SummonOne",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"2 Blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChaosBusterBlasters",
[3] = "SummonTwo",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"4 Blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChaosBusterBlasters",
[3] = "SummonFour",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.sschara:addKeybind(
"8 Blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChaosBusterBlasters",
[3] = "SummonEight",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SFCharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Summon one small blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GasterBlasters",
[3] = "SummonOne",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Summon one big blaster",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GasterBlasters",
[3] = "SummonOneBig",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Summon four blasters",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GasterBlasters",
[3] = "SummonFour",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Summon eight blasters",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GasterBlasters",
[3] = "SummonEight",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Summon blasters barrage",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "GasterBlasters",
[3] = "SummonSpecial",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Bone Combo",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Special3"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Normal Telekinesis",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis",
[3] = "Start",
[4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Special 1 Telekinesis",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis",
[3] = "Special",
[4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.osans:addKeybind(
"Special 2 Telekinesis",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis",
[3] = "Special2",
[4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Telekinesis",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Blaster 1",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Blaster 2",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Blaster 3",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters3"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Blaster 4",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Blasters4"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Special 1",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Special1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.nsans:addKeybind(
"Special 2",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Special2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.asriel:addKeybind(
"Galacta Blazing",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "StarBlazing",
[3] = "Start",
[4] = "Galacta "
}
local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.asriel:addKeybind(
"Shocker Breaker II",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ShockerBreaker",
[3] = "Start",
[4] = " II"
}
local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.asriel:addKeybind(
"Asriel's Attack Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "AsrielBarrageMove",
[3] = "Fire",
[4] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.asriel:addKeybind(
"Hyper Beam(Spamable)",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "HyperBeam",
[3] = "Fire"
}
local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.asriel:addKeybind(
"Hyper Goner(Spamable)",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "HyperGoner",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
Event:InvokeServer(A_1)
wait(1)
game.Players.LocalPlayer.Character.HyperGonered:Destroy()
end,
function()
end
)

uiSecs.undyne:addKeybind(
"Spears Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "MultipleSpears",
[4] = 50
}
local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.undyne:addKeybind(
"Huge Spear",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Spawn",
[4] = "Undying"
}
local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.undyne:addKeybind(
"Spear Zone",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "SpawnGround2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.undyne:addKeybind(
"Spear Of Justice",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Special"
}
local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.frisk:addKeybind(
"Punch Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ToughGloves",
[3] = "PunchBarrage"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.frisk:addKeybind(
"Gun Shot",
nil,
function()
 if game.Players.LocalPlayer.Character.EmptyGun["Cylinder Release"] then
   local A_1 = {
       [1] = getrenv()._G.Pass,
       [2] = "GunShot",
       [3] = "Light",
       [4] = game.Players.LocalPlayer.Character.EmptyGun["Cylinder Release"].CFrame
    }
   local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
   Event:InvokeServer(A_1)
end
end,
function()
end
)

uiSecs.frisk:addKeybind(
"Knife Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "RealKnifeBaragge"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.frisk:addKeybind(
"Air Slashes",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "RealKnifeSlashes"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.frisk:addKeybind(
"Knife Stab",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "RealKnifeBigSlash"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.time:addButton("")
spawn(function()
while wait(1) do
 game.CoreGui[hubname].Main.Ui["UTC Time"].Container.Button.Title.Text = os.date()
end
end)

uiSecs.ui:addButton(
"Destroy Gui",
function()
game.CoreGui[hubname]:Destroy()
end
)

uiSecs.place:addButton(
"Rejoin",
function()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
TeleportService:Teleport(game.PlaceId, LocalPlayer)
end
)

uiSecs.place2:addKeybind(
"Justice Beam",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "YellowBeam",
[3] = "Fire"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Justice Projective",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeProjectileYellow",
[3] = "Spawn",
[4] = r2.p
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.place2:addKeybind(
"Purple Projective",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeProjectilePurple",
[3] = "Spawn",
[4] = r2.p
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.place2:addKeybind(
"Knife Projective",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeProjectile",
[3] = "Spawn",
[4] = r2.p
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.place2:addKeybind(
"Integrity Slam",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "IntegrityAttack",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Integrity Sweep",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "IntegrityAttack2",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addToggle(
"Knife Shield",
false,
function(state)
if state == true then
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KnifeShield",
[3] = true
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end

if state == false then
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KnifeShield",
[3] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end
)

uiSecs.place2:addKeybind(
"HateBall",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "HateBall",
[3] = "Start",
[4] = true
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Patient Rod 2",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "PatienceAttack2",
[3] = r2.p,
[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Patient Rod 1",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "PatienceAttack",
[3] = r2.p,
[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Special hell area",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "AreaAttack",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Special hell slash",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "SpecialHell2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Heal Knife",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KnifeHeal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place2:addKeybind(
"Dark Red Projectiles",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Spawn",
[4] = r2.p
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.place2:addKeybind(
"Orange Projective",
nil,
function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeProjectileOrange",
[3] = "Spawn",
[4] = r2.p
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.place2:addButton("Custom Attacks")

uiSecs.place2:addKeybind(
"The Moon",
nil,
function()
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "Moon Sign: Silence Selene",
        [4] = Color3.new(1, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local char = game.Players.LocalPlayer.Character
        local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard
        local function title(txt)
        game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard.SpellCard.Card.Value = txt
        end
        title("Moon Sign: Silence Selene")
        local kg = Instance.new("Sound", game.Players.LocalPlayer)
        kg.Volume = 5
        kg.SoundId = "rbxassetid://6140745654"
        kg:Play()
        local clone = script:Clone()
        clone.Parent = char
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
        a = Instance.new("Animation")
        a.AnimationId = "rbxassetid://4905914802"
        k = h:LoadAnimation(a)
        k:Play()
        k:AdjustSpeed(3)
        wait(.1)
        amm = 15
        for i = 1, amm, 1 do
        spawn(
        function()
        local A_1 = {
        [1] = pass,
        [2] = "KnifeProjectileDarkRed",
        [3] = "Spawn",
        [4] = r2.p
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        end
        )
        end
        am = 0
        val = Instance.new("NumberValue", player)
        val.Name = "KnifeSlashes Amount"
        local tabeeas = {}
        detect =
        char.Attacks.ChildAdded:Connect(
        function(pp)
        if pp.Name == "KnifeSlashProjectileDark" then
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
        if v.Name == "KnifeSlashProjectileDark" then
        v:WaitForChild("BodyVelocity"):Destroy()
        v:WaitForChild("ParticleEmitter"):Destroy()
        v.CFrame = char.HumanoidRootPart.CFrame
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
        x = 0
        z = 0
        y = 20
        j = 50
        table.insert(tab, v1)
        table.insert(tab2, v)
        v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(math.random(j),math.random(j),math.random(j))
        end
        end
        wait(3)
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
        tab[i].Position = r2.p + Vector3.new(1, 0, 0)
        tab2[i].CFrame = r2 * CFrame.new(x, 10, z)
        spawn(
        function()
        local A_1 = {
        [1] = pass,
        [2] = "KnifeProjectileDarkRed",
        [3] = "Hit",
        [4] = tab2[i],
        [5] = r2,
        [6] = r1
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        end
        )
        end
        end
        end
        )
        for i, v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do
        if v.Name == "Removing" then
        game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
        end
        end
end
)

uiSecs.place2:addKeybind(
"The Sun",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "Sun Sign: Royal Flare",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard
local function title(txt)
game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard.SpellCard.Card.Value = txt
end
title("Sun Sign: Royal Flare")
local kg = Instance.new("Sound", game.Players.LocalPlayer)
kg.Volume = 5
kg.SoundId = "rbxassetid://6140745654"
kg:Play()
local clone = script:Clone()
clone.Parent = char
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
a = Instance.new("Animation")
a.AnimationId = "rbxassetid://4905914802"
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
wait(.1)
amm = 15
for i = 1, amm, 1 do
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Spawn",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
end
am = 0
val = Instance.new("NumberValue", player)
val.Name = "KnifeSlashes Amount"
local tabeeas = {}
detect =
char.Attacks.ChildAdded:Connect(
function(pp)
if pp.Name == "KnifeSlashProjectileDark" then
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
if v.Name == "KnifeSlashProjectileDark" then
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
x = 0
z = 0
y = 20
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
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Hit",
[4] = tab2[i],
[5] = r2,
[6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
wait(0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0)
end
end
end
)
wait(16)
for i, v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do
if v.Name == "Removing" then
game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
end
end
end
)

uiSecs.place2:addKeybind(
"Skid Destroyer Slashes",
nil,
function()
player = game.Players.LocalPlayer
char = player.Character
char.Attacks:ClearAllChildren()
 for i,v in pairs(game.ReplicatedStorage.RemoteSecurity:GetChildren()) do
   v.Name="Noob"..i
end

local player = game.Players.LocalPlayer
local character = player.Character
local remote = game.ReplicatedStorage.Remotes["CharaMoves"]
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

local hitcolor = "Random"
local hitrate = 100
local hitcd = 0
local function Closest(where)
 dist = 10
 gotem = {}
   for i,v in pairs(workspace:GetChildren()) do
       if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
           if ((v.HumanoidRootPart.Position - where).magnitude <= dist) then
               if not gotem[v.Name] then
                  gotem[v.Name] = v
               end
           end
       end
   end
   return gotem
end

local function Track(proj) 
 cd = {}
   repeat wait()
       game:GetService("RunService").Heartbeat:Wait()
     obtained = Closest(proj.Position)
       if obtained then
           for i,v in pairs(obtained) do
               if not cd[v.Name] then
                   cd[v.Name] = true
                   delay(hitcd, function()
                       cd[v.Name] = false
                   end)
                   for i=1,hitrate do 
                       spawn(function()
                           if proj:FindFirstChild("Hitted") then
                             colorchoice = hitcolor
                               if hitcolor == "Random" then
                                 colors = {"KnifeProjectileOrange"}
                                   colorchoice = colors[1]
                               end
                               remote:InvokeServer({security,colorchoice,"Hit",proj,v.HumanoidRootPart.CFrame,v.HumanoidRootPart})
                           end
                       end)
                   end
               end
           end
       end
   until not (proj.Parent == character.Attacks)
end
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local atkhit
atkhit = game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(what)
if what.Name == "KnifeSlashProjectileOrange" then
       Track(what)
end
end)
local deleteeffect
deleteeffect = game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(what)
if what.Name == "CarrotHitEffect" then
what:Destroy()
end
end)
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
amm = 3
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
     [1] = pass,
     [2] = "KnifeProjectileOrange", 
     [3] = "Spawn", 
     [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'Knife Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileOrange' then
am = am + 1
val.Value = am
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'KnifeSlashProjectileOrange' then
   v:WaitForChild('BodyVelocity', 100):Destroy()
   v:WaitForChild("ParticleEmitter", 100):Destroy()
spawn(function()
   v:WaitForChild('BodyVelocity', 100):Destroy()
   v:WaitForChild("ParticleEmitter", 100):Destroy()
end)
v.CFrame = char.HumanoidRootPart.CFrame
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
wait(1)
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
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,0,0)
tab2[i].CFrame = r2
spawn(function()
local A_1 =  {
     [1] = pass, 
     [2] = "KnifeProjectileOrange", 
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
spawn(function()
wait(10)
atkhit:Disconnect()
deleteeffect:Disconnect()
detect2:Disconnect()
detect:Disconnect()
end)
wait(10)
char.Attacks:ClearAllChildren()
end)


uiSecs.place2:addKeybind(
"Enemy Yeet'ing string",
nil,
function()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  character.CFrame = CFrame.new(1119, 2652, -99999999) 
  wait(0.1)
  character.Anchored = true
  wait(1)
  local Fling = 
  {
      [1] = getrenv()._G.Pass, 
      [2] = "PatienceAttack", 
      [3] = Vector3.new(902.7169189453125, 324.70806884765625, -277.6448669433594), 
      [4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
  }
  local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
  Event:InvokeServer(Fling)
  wait(1.1)
  character.CFrame = CFrame.new(1251, 325, -556)
  wait()
  character.Anchored = false
end)


uiSecs.place2:addKeybind(
"Air Animosity",
nil,
function()
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
wait(.1)
amm = 15
for i = 1, amm, 1 do
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Spawn",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
end
am = 0
val = Instance.new("NumberValue", player)
val.Name = "KnifeSlashes Amount"
local tabeeas = {}
detect =
char.Attacks.ChildAdded:Connect(
function(pp)
if pp.Name == "KnifeSlashProjectileDark" then
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
if v.Name == "KnifeSlashProjectileDark" then
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
x = math.random(-10, 10) * 3
z = math.random(-10, 10) * 3
y = 5 * 10
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0, 10, 0)
table.insert(tab, v1)
table.insert(tab2, v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x, y, z)
end
end
wait(2)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "=)",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
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
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Hit",
[4] = tab2[i],
[5] = r2,
[6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
wait(0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0)
end
end
end
)
wait(16)
for i, v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do
if v.Name == "Removing" then
game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
end
end
end
)

uiSecs.place2:addKeybind(
"Call of The Void",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "Void Sign: Call of The Void",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard
local function title(txt)
game:GetService("ReplicatedStorage").Resources.LocalScripts.SpellCard.SpellCard.Card.Value = txt
end
title("Void Sign: Call of the void")
local kg = Instance.new("Sound", game.Players.LocalPlayer)
kg.Volume = 5
kg.SoundId = "rbxassetid://6140745654"
kg:Play()
local clone = script:Clone()
clone.Parent = char
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
a = Instance.new("Animation")
a.AnimationId = "rbxassetid://4905914802"
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
wait(.1)
amm = 20
for i = 1, amm, 1 do
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Spawn",
[4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
end
am = 0
val = Instance.new("NumberValue", player)
val.Name = "KnifeSlashes Amount"
local tabeeas = {}
detect =
char.Attacks.ChildAdded:Connect(
function(pp)
if pp.Name == "KnifeSlashProjectileDark" then
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
if v.Name == "KnifeSlashProjectileDark" then
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
x = math.random(-10, 10) * 100
z = math.random(-10, 20) * 100
y = math.random(5, 5) * 40
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
spawn(
function()
local A_1 = {
[1] = pass,
[2] = "KnifeProjectileDarkRed",
[3] = "Hit",
[4] = tab2[i],
[5] = r2,
[6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
)
wait(0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0 / 0)
end
end
end
)
wait(16)
for i, v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do
if v.Name == "Removing" then
game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
end
end
end
)

uiSecs.place6:addKeybind(
"Muda Muda Muda MUDA!",
nil,
function()
for i = 1, 15, 1 do
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "Muda Muda Muda Muda",
[4] = Color3.new(0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4920871999"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "BiggerBurstEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -50, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Damage"] = 40
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end,
function()
end
)

uiSecs.place6:addToggle(
"Custom RMB Attack",
false,
function(a)
RMB = a
end
)

game.Players.LocalPlayer:GetMouse().Button2Down:Connect(
function()
if RMB == false then
RMB = false
elseif RMB == true then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929688526"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = {
["Type"] = "Knockback",
["HitEffect"] = "BiggerBurstEffect",
["HitTime"] = 1,
["Velocity"] = Vector3.new(20, -5, 0),
["VictimCFrame"] = CFrame.new(),
["Damage"] = math.random(30, 40)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end
end
)

uiSecs.place6:addKeybind(
"Super KnockBack",
nil,
function()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = {
["Type"] = "Knockback",
["HitEffect"] = "BiggerBurstEffect",
["HitTime"] = 1,
["Velocity"] = Vector3.new(0, 100, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 150,
["VictimCFrame"] = CFrame.new(),
["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end,
function()
end
)

uiSecs.place0:addKeybind(
"OverWrite Heal",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Bones Barrage",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "SummonBones",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Summon Blaster",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "CrossBlaster"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Bones Line",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "LineBones"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Special Slash Red",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KnifeSpecial1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Special Slash Purple",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "XCharaKnifeSpecial1"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Red Corruption",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "KnifeSpecial3"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Purple Corruption",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "XCharaKnifeSpecial2"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Summon Knifes Purple",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "SummonKnivesChara",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Summon Knifes Red",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "SummonKnives",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Lower Attack and Defense",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "LowerAttack"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.place0:addKeybind(
"Overwrite Teleport",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "OverwriteKnives"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
end,
function()
end
)

looped = false

uiSecs.place3:addToggle(
"Loop Music",
false,
function(state)
looped = state
end)

uiSecs.place3:addButton(
"Necrofantasia",
function()
if looped == false then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://3878888130"
 KG.Looped = false
 KG:Play()
 elseif looped == true then
   KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://3878888130"
 KG.Looped = true
 KG:Play()
 end
end
)

uiSecs.place3:addButton(
"Bullet Hell Nitro Remix",
function()
if looped == false then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://5184496328"
 KG.Looped = false
 KG:Play()
 elseif looped == true then
   KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://5184496328"
 KG.Looped = true
 KG:Play()
 end
end
)

uiSecs.place3:addButton(
"Galaxy Collapse",
function()
if looped == false then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://582476855"
 KG.Looped = false
 KG:Play()
 elseif looped == true then
   KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://582476855"
 KG.Looped = true
 KG:Play()
 end
end
)

uiSecs.place3:addButton(
"Inking Mistake",
function()
if looped == false then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://1326552262"
 KG.Looped = false
 KG:Play()
 elseif looped == true then
   KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://1326552262"
 KG.Looped = true
 KG:Play()
 end
end
)

uiSecs.place3:addButton(
"Build Our Machine",
function()
if looped == false then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://825878724"
 KG.Looped = false
 KG:Play()
 elseif looped == true then
   KG = Instance.new("Sound", game.Players.LocalPlayer)
 KG.Volume = 5
 KG.SoundId = "rbxassetid://825878724"
 KG.Looped = true
 KG:Play()
 end
end
)

uiSecs.place3:addButton(
"Bad Apple",
function()
if looped == false then
KG = Instance.new("Sound", game.Players.LocalPlayer)
KG.Volume = 5
KG.SoundId = "rbxassetid://412333048"
KG.Looped = false
KG:Play()
elseif looped == true then
 KG = Instance.new("Sound", game.Players.LocalPlayer)
KG.Volume = 5
KG.SoundId = "rbxassetid://412333048"
KG.Looped = true
KG:Play()
end
end
)

uiSecs.main2:addButton(
"Bring All(Left Bracket to toggle bring all)",
function()
local L_1_ = true
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(
function(L_4_arg1)
if L_4_arg1 == "]" then
L_1_ = not L_1_
end
if L_4_arg1 == "[" then
L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart
L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
end
end
)

for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
if L_6_forvar2 == game.Players.LocalPlayer then
else
local L_7_ =
coroutine.create(
function()
game:GetService("RunService").RenderStepped:Connect(
function()
local L_8_, L_9_ =
pcall(
function()
local L_10_ = L_6_forvar2.Character
if L_10_ then
if L_10_:FindFirstChild("HumanoidRootPart") then
if L_1_ then
L_6_forvar2.Backpack:ClearAllChildren()
for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
if L_12_forvar2:IsA("Tool") then
L_12_forvar2:Destroy()
end
end
L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
end
end
end
end
)
if L_8_ then
else
warn("Unnormal error: " .. L_9_)
end
end
)
end
)
coroutine.resume(L_7_)
end
end

game.Players.PlayerAdded:Connect(
function(L_13_arg1)
if L_13_arg1 == game.Players.LocalPlayer then
else
local L_14_ =
coroutine.create(
function()
game:GetService("RunService").RenderStepped:Connect(
function()
local L_15_, L_16_ =
pcall(
function()
local L_17_ = L_13_arg1.Character
if L_17_ then
if L_17_:FindFirstChild("HumanoidRootPart") then
if L_1_ then
L_13_arg1.Backpack:ClearAllChildren()
for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
if L_19_forvar2:IsA("Tool") then
L_19_forvar2:Destroy()
end
end
L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
end
end
end
end
)
if L_15_ then
else
warn("Unnormal error: " .. L_16_)
end
end
)
end
)
coroutine.resume(L_14_)
end
end
)
end
)

uiSecs.place6:addButton(
"Chara Bravery Boost(Press G to Stop)(No lag+stamina)",
function()
 for i,v in pairs(game.ReplicatedStorage.RemoteSecurity:GetChildren()) do
   v.Name="Noob"..i
end

local player = game.Players.LocalPlayer
local character = player.Character
local remote = game.ReplicatedStorage.Remotes["CharaMoves"]
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

local hitcolor = "Random"
local hitrate = 100
local hitcd = 0
local function Closest(where)
 dist = 10
 gotem = {}
   for i,v in pairs(workspace:GetChildren()) do
       if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
           if ((v.HumanoidRootPart.Position - where).magnitude <= dist) then
               if not gotem[v.Name] then
                  gotem[v.Name] = v
               end
           end
       end
   end
   return gotem
end

local function Track(proj) 
 cd = {}
   repeat wait()
       game:GetService("RunService").Heartbeat:Wait()
     obtained = Closest(proj.Position)
       if obtained then
           for i,v in pairs(obtained) do
               if not cd[v.Name] then
                   cd[v.Name] = true
                   delay(hitcd, function()
                       cd[v.Name] = false
                   end)
                   
                   for i=1,hitrate do
                       spawn(function()
                           if proj:FindFirstChild("Hitted") then
                             colorchoice = hitcolor
                               if hitcolor == "Random" then
                                 colors = {"KnifeProjectileOrange"}
                                   colorchoice = colors[1]
                               end
                               remote:InvokeServer({security,colorchoice,"Hit",proj,v.HumanoidRootPart.CFrame,v.HumanoidRootPart})
                           end
                       end)
                   end
               end
           end
       end
   until not (proj.Parent == character.Attacks)
end
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit * CFrame.new(0, 4, 0)
end
local atkhit
atkhit = game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(what)
if what.Name == "KnifeSlashProjectileOrange" then
       Track(what)
end
end)
game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(what)
if what.Name == "CarrotHitEffect" then
what:Destroy()
end
end)
local uis = game:GetService("UserInputService")
local con
con = uis.InputBegan:Connect(function(inputs, gse)
   if not gse then
     keycode = inputs.KeyCode
       if keycode == Enum.KeyCode.G then
atkhit:Disconnect()
           con:Disconnect()
       end
   end
end)
end
)

uiSecs.place6:addButton(
"Small kill command tip",
function()
venyx:Notify([[Cheese Hub]], [[Add two spaces after you type ":kill" will help you to kill all]])
end
)

uiSecs.place6:addButton(
"Kill command(:kill [Player's name])",
function()
 local player = game.Players.LocalPlayer
 local Players = game:GetService("Players")
 local rs = game:GetService("RunService")
 player.Chatted:Connect(
 function(mag, secipient)
 if string.sub(mag, 1, 1) == ":" then
 local splitstring = string.split(mag, " ")
 if splitstring[1] == ":kill" then
 for _, PlayerTarget in pairs(Players:GetPlayers()) do
 if
 string.sub(string.lower(PlayerTarget.Name), 1, string.len(splitstring[2])) ==
 string.lower(splitstring[2])
 then
 local args = {
 [1] = {
 [1] = getrenv()._G.Pass,
 [2] = "KnifeProjectileOrange",
 [3] = "Spawn",
 [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position +
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
 10 +
 Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
 }
 }
 wait()
 game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
 local a = rs.HeartBeat:Connect(function(a)
 for i, v in pairs(player.Character.Attacks:GetChildren()) do
 if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
 if PlayerTarget.Character:WaitForChild("Humanoid").Health == 0 then
 v:Destroy()
 a:Disconnect()
 else
 v.Position =
 PlayerTarget.Character.LockOn.Position
 local args = {
 [1] = {
 [1] = getrenv()._G.Pass,
 [2] = "KnifeProjectileOrange",
 [3] = "Hit",
 [4] = v,
 [5] = PlayerTarget.Character.HumanoidRootPart.CFrame,
 [6] = PlayerTarget.Character.HumanoidRootPart
 }
 }
 
 game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(
 unpack(args)
 )
 end
 end
 end
 end)
 end
 end
 end
 end
 end
 )
end
)

uiSecs.place6:addKeybind(
"Player Eraser",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "The Cheese: Erase",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "HeavyHitEffect",
["Velocity"] = Vector3.zero,
["HitTime"] = 1,
["CombatInv"] = true,
["BlockAble"] = false,
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["Damage"] = 0
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
)

uiSecs.place6:addKeybind(
"Inf(nan) damage",
nil,
function()
args = {
   [1] = getrenv()._G.Pass,
   [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
   [3] = {
   ["Type"] = "Normal",
   ["HitEffect"] = "LightHitEffect",
   ["HitTime"] = 1,
   ["Velocity"] = Vector3.new(1,0,0),
   ["CombatInv"] = true,
   ["BlockAble"] = false,
   ["Damage"] = "nan"
   }
   }
   game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)

uiSecs.place6:addKeybind(
"Freeze A Player(Use godmode if ur get freezed)",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "The Cheese: Freeze",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.InverseEffect
local clone = script:Clone()
clone.Parent = char
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "BiggerBurstEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
["HitTime"] = 1,
["CombatInv"] = true,
["BlockAble"] = false,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop2,
["Damage"] = 0
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.TimeStopEffect
local clone = script:Clone()
clone.Parent = char
end
)

uiSecs.main:addToggle(
"Auto Block",
false,
function(state)
 local A_1 = {
   [1] = getrenv()._G.Pass,
   [2] = "Blocking",
   [3] = true
   }
   local Event = game:GetService("ReplicatedStorage").Remotes.Functions
repeat wait(1)
if game.Players.LocalPlayer.Character.Data.Blocking.Value == false then
Event:InvokeServer(A_1)
end
until state == false
end
)

uiSecs.main:addButton(
"Anti AFK",
function()
local VirtualUser = game.VirtualUser
game.Players.LocalPlayer.Idled:connect(
function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end
)
end
)

uiSecs.main:addButton(
"RoseShield Block Ut Frisk",
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "EquipWeapon",
[3] = "RoseShield"
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end
)

uiSecs.main:addButton(
"ESP",
function()
esp_settings = {
   textsize = 15,
   colour = 255,
   255,
   255
   }
   
 gui = Instance.new("BillboardGui")
 esp = Instance.new("TextLabel", gui)
   gui.Name = "Clown esp"
   gui.ResetOnSpawn = false
   gui.AlwaysOnTop = true
   gui.LightInfluence = 0
   gui.Size = UDim2.new(1.75, 0, 1.75, 0)
   esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   esp.Text = ""
   esp.Size = UDim2.new(0.0001, 0.00001, 0.0010, 0.00001)
   esp.BorderSizePixel = 4
   esp.BorderColor3 = Color3.fromRGB(esp_settings.colour)
   esp.BorderSizePixel = 0
   esp.Font = "SourceSansBold"
   esp.TextSize = esp_settings.textsize
   esp.TextColor3 = Color3.fromRGB(esp_settings.colour)
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
     if
     v ~= game:GetService("Players").LocalPlayer and
     v.Character:WaitForChild("Head"):FindFirstChild("Clown esp") == nil
     then
     esp.Text = "" .. v.Name .. ""
     gui:Clone().Parent = v.Character:WaitForChild("Head")
     end
     end
end
)

uiSecs.main:addKeybind(
"Teleportation",
nil,
function()
if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame
)
else
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer:GetMouse().Hit)
end
end
)

uiSecs.main:addButton(
"Inf Stamina",
function()
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' then
task.wait()
v:Destroy()
end
end)
end
)

uiSecs.stuffs:addButton(
"AutoRun + Esp(Don't use in betty or Undyne)",
function()
loadstring(
game:HttpGet(
"https://gist.githubusercontent.com/LiterallyATrueClown/9eb5e3162cf9906015209348a32462b3/raw/7544279d5a84e41f6732df602f590cadc2c8ad14/espop",
true
)
)()
end
)

uiSecs.stuffs:addButton(
"RTX Shader Script(Made by Fade/Fate)",
function()
venyx:Notify("Cheese Hub", "Recommended to turn your graphic value to 8(Low) or Max(High)")
loadstring(game:HttpGet("https://hecatialapislazuli9.000webhostapp.com/rtx.lua", true))()
wait(4)
game.Lighting.ClockTime = 15
end
)
uiSecs.stuffs:addButton(
"Custom Blaster",
function()
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
a1.Name = "Head"
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
a2.Name = "RJaw"
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
a3.Name = "LJaw"
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
a4.Name = "Inside"
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
a5.Name = "Inside2"
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
a1e.Name = "Head"
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
a2e.Name = "RJaw"
a2e.BrickColor = BrickColor.new("White")
a2e.Material = "Neon"
a2e.Transparency = 0
aa2e = new("SpecialMesh", a2e)
aa2e.MeshType = "FileMesh"
aa2e.Offset = v3(-5, 2.01, -0.2)
aa2e.Scale = v3(0.07, 0.07)
aa2e.MeshId = "rbxassetid://2267146284"
aaa2e = new("Weld", a2e)
aaa2e.Part0 = hed
aaa2e.Part1 = a2e
aaa2e.C0 = CFrame.Angles(0, math.rad(0), 0)

a3e = new("Part", char)
a3e.Name = "LJaw"
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

a4e = new("Part", char)
a4e.Name = "Inside"
a4e.BrickColor = BrickColor.new("White")
a4e.Material = "Neon"
a4e.Transparency = 0
aa4 = new("SpecialMesh", a4e)
aa4e.MeshType = "FileMesh"
aa4e.Offset = v3(-7, 3, -0.1)
aa4e.Scale = v3(0.1, 0.1, 0.1)
aa4e.MeshId = "rbxassetid://2267130588"
aaa4e = new("Weld", a4e)
aaa4e.Part0 = hed
aaa4e.Part1 = a4e
aaa4e.C0 = CFrame.Angles(0, math.rad(0), 0)

a5e = new("Part", char)
a5e.Name = "Inside2"
a5e.BrickColor = BrickColor.new("White")
a5e.Material = "Neon"
a5e.Transparency = 0
aa5e = new("SpecialMesh", a5e)
aa5e.MeshType = "FileMesh"
aa5e.Offset = v3(-7, 3, -0.1)
aa5e.Scale = v3(0.1, 0.1, 0.1)
aa5e.MeshId = "rbxassetid://2267130588"
aaa5e = new("Weld", a5e)
aaa5e.Part0 = hed
aaa5e.Part1 = a5e
aaa5e.C0 = CFrame.Angles(0, math.rad(0), 0)
end
)

uiSecs.main:addToggle(
"Tp bypass",
false,
function(state)
if state == true then
for _, v in pairs(game.Workspace.Map:GetChildren()) do
if v.Name == "MapCFrame" then
v:Destroy()
end
end
for _, v in pairs(game.Workspace.Map:GetChildren()) do
if v.Name == "MapSize" then
v:Destroy()
end
end
elseif state == false then
local cframe = Instance.new("CFrameValue", game:GetService("Workspace").Map)
local vector3 = Instance.new("Vector3Value", game:GetService("Workspace").Map)
cframe.Name = "MapCFrame"
vector3.Name = "MapSize"
cframe.Value = CFrame.new(-265.536652, 11.7406921, -269.595642, 1, 0, 0, 0, 1, 0, 0, 0, 1)
vector3.Value = Vector3.new(1243.05, 519, 1258.61)
end
end
)

uiSecs.main:addButton(
"InfJump",
function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end
)

uiSecs.place6:addKeybind(
"Inf Attack",
nil,
function()
    a = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
repeat
wait(0.1)
local args = {
[1] = getrenv()._G.Pass,
[2] = a,
[3] = {
["HitTime"] = 1,
["Type"] = "Normal",
["HitEffect"] = "CarrotHitEffect",
["VictimCFrame"] = CFrame.new(
Vector3.new(
a.HumanoidRootPart.Position.X,
a.HumanoidRootPart.Position.Y,
a.HumanoidRootPart.Position.Z + 5
)
),
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 1,
["CombatInv"] = true
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
until a.Humanoid.Health <= 0
end,
function()
end
)

uiSecs.main:addToggle(
"Toggle Chat Box",
false,
function(state)
if state == true then
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end

if state == false then
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
end
end
)

uiSecs.opstuffs:addButton(
"Release your enemy(All)",
function()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "BettySpear" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "BettyHeart" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
end
)

uiSecs.opstuffs:addButton(
"Anti-Lock Remover (All Players)",
function()
for i, v in pairs(game.Players:GetChildren()) do
 if v.Character then
 sword2 = Instance.new("Part", v.Character)
 sword2.Name = "LockOn"
 sword2.Transparency = 1
 sword2.Size = Vector3.new(5,5,5)
 sword2.CanCollide = false
 weld = Instance.new("Weld", sword2)
 weld.Part0 = v.Character["HumanoidRootPart"]
 weld.Part1 = v.Character["LockOn"]
 end
end
end
)

uiSecs.opstuffs:addButton(
"Anti-Sans Sparing",
function()
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Hit" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "GetDunkedOn" then
v:Destroy()
end
end
local LocalPlayer = game:GetService("Players").LocalPlayer
for index, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("Part") and part.Anchored == true then
part.Anchored = false
end
end
end
)

uiSecs.opstuffs:addButton(
"Anti-SoulSteal",
function()
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Hit" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "SpearDeath" then
v:Destroy()
end
end
local LocalPlayer = game:GetService("Players").LocalPlayer
for index, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("Part") and part.Anchored == true then
part.Anchored = false
end
end
end
)

uiSecs.opstuffs:addButton(
"Anti-Time Stop",
function()
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "TimeStopEffect" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InTimeStop" then
v:Destroy()
end
end
local LocalPlayer = game:GetService("Players").LocalPlayer
for index, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("Part") and part.Anchored == true then
part.Anchored = false
end
end
end
)

uiSecs.opstuffs:addButton(
"Anti-Custom Freeze",
function()
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
if v.Name == "KnockbackSmoke" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CombatInv" then
v:Destroy()
end
end
task.wait()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Hit" then
v:Destroy()
end
end
task.wait()
local LocalPlayer = game:GetService("Players").LocalPlayer
for index, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("Part") and part.Anchored == true then
part.Anchored = false
end
end
end
)
local plrgui = game.Players.LocalPlayer.PlayerGui
uiSecs.opstuffs:addButton(
"Anti-Hyper Goner",
function()
if plrgui:FindFirstChild("HyperGonerMiniGame") then
 plrgui:FindFirstChild("HyperGonerMiniGame"):Destroy()
end
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(
function(a)
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
if a.Name == "HyperGonerMiniGame" then
task.wait()
a:Destroy()
end
end
)
end
)

uiSecs.opstuffs:addButton(
"Anti-Blind",
function()
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(
function(v)
 if v.Name == "WhiteScreen" or v.Name == "BlackScreen" then
   v:Destroy()
 end
end
)
for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
if v.Name == "Blur" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
 if v.Name == "WhiteScreen" or v.Name == "BlackScreen" then
 v:Destroy()
 end
 end
end
)

uiSecs.opstuffs:addButton(
"Anti-Softlock",
function()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Client" then
task.wait()
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Server" then
task.wait()
v:Destroy()
end
end
end
)

uiSecs.opstuffs:addButton(
"Roblox NetOwner Fix",
function()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Removing" then
task.wait()
v:Destroy()
end
end
task.wait()
local LocalPlayer = game:GetService("Players").LocalPlayer
for index, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("Part") or part:IsA("MeshPart") or part:IsA("Union") then
part.Anchored = false
end
end
end
)

uiSecs.opstuffs:addButton(
"0 HP Godmode Destroyer",
function()
for i, v in pairs(game.Players:GetChildren()) do
 if v.Character then
v.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
  if v.Character.Humanoid.Health == 0 then
v.Character.Humanoid.Health = 1
end
end)
 end
end 
end
)

uiSecs.opstuffs:addButton(
"Inv Frame Destroyer",
function()
for i, v in pairs(game.Players:GetChildren()) do
 if v.Character and v.Character.Inv and not v.Name ~= game.Players.LocalPlayer.Name then
   v.Character.Inv:Destroy()
 end
end 
end
)

uiSecs.stuffs:addToggle(
"Faceless eyes trail",
false,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
if v.Name == "RedEyes" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "CLOWNEYES"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNEYES" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"IDK's Dark Aura",
false,
function(state)
if state == true then
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "DarkAuraEffect" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNDARKAURA"
weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "TransformationAura" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNDARKAURA"
weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNDARKAURA" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Stevonie Pink Trail",
false,
function(state)
if state == true then
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["HumanoidRootPart"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Left Arm"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Leg"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "PinkTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Leg"]
sword2.Name = "CLOWNPINKTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNPINKTRAIL" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Asriel Rainbow trail",
false,
function(state)
if state == true then
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["HumanoidRootPart"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Leg"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Left Leg"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Left Arm"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "RainbowTrail" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
sword2.Name = "CLOWNRBTRAIL"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNRBTRAIL" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Faceless Flame Aura",
false,
function(state)
if state == true then
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "Flame" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["HumanoidRootPart"]
sword2.Name = "CLOWNFLAMEAURA1"
weld.C0 = CFrame.new(0, 3, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "Flame2" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["HumanoidRootPart"]
sword2.Name = "CLOWNFLAMEAURA2"
weld.C0 = CFrame.new(0, 3, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNFLAMEAURA1" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNFLAMEAURA2" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Sans's Eyes Trail",
false,
function(state)
if state == true then
for _, v in pairs(
game.ReplicatedStorage.Resources.Character.Accessories.Sans.BadTimePlayer.BadTimeEye:GetChildren()
) do
if v.Name == "Part" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "CLOWNSANSEYE"
weld.C0 = CFrame.new(-0.2, -0.03, 0.5) * CFrame.Angles(-0.1, 0, -1.6)
sword2.Transparency = 0
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "CLOWNSANSEYE" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addButton(
"Delete the sky",
function()
for _, v in pairs(game.Lighting:GetChildren()) do
if v.Name == "Sky" then
v:Destroy()
end
end
end
)

uiSecs.stuffs:addButton(
"Reset Animations",
function()
for _,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
v:Stop()
end
end
)

uiSecs.stuffs:addButton(
"High Damage(Medium)",
function()
 mt = getrawmetatable(game)
   setreadonly(mt,false)
 backup2 = rawget(mt,"__namecall")
 random_random = function(self,...)
      if checkcaller() then return backup2(self,...) end
    args = {...}
      if getnamecallmethod() == "InvokeServer" or getnamecallmethod() == "FireServer" then
        tbl = args[1]
          if type(args[3]) == "table" and args[3]["Damage"] ~= nil and args[3]["Type"] ~= nil and args[3]["HitTime"] ~= nil then
            oki = args[3]
              if oki["Damage"] < 10 then
                  oki["Damage"] = 8
              end
              if oki["Type"] == "Knockback" then
              oki["Damage"] = 35
              end
              oki["HitTime"] = 0
              return backup2(self,args[1],args[2],oki)
          end
      end
         if self == ts and getnamecallmethod() == "Create" then
          pcall(function()
              if args[1].Parent == map then
                  return
              end
              if args[1].Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
          end)
      end
      return backup2(self,...)
   end
   mt.__namecall = random_random
end
)

uiSecs.stuffs:addButton(
"High Damage(Max)",
function()
 mt = getrawmetatable(game)
   setreadonly(mt,false)
 backup2 = rawget(mt,"__namecall")
 random_random = function(self,...)
      if checkcaller() then return backup2(self,...) end
    args = {...}
      if getnamecallmethod() == "InvokeServer" or getnamecallmethod() == "FireServer" then
        tbl = args[1]
          if type(args[3]) == "table" and args[3]["Damage"] ~= nil and args[3]["Type"] ~= nil and args[3]["HitTime"] ~= nil then
            oki = args[3]
              if oki["Damage"] < 10 then
                  oki["Damage"] = 10
              end
              if oki["Type"] == "Knockback" then
              oki["Damage"] = 40
              end
              oki["HitTime"] = 0
              return backup2(self,args[1],args[2],oki)
          end
      end
         if self == ts and getnamecallmethod() == "Create" then
          pcall(function()
              if args[1].Parent == map then
                  return
              end
              if args[1].Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
              if args[1].Parent.Parent.Parent.Parent.Parent.Parent.Parent == map then
                  return
              end
          end)
      end
      return backup2(self,...)
   end
   mt.__namecall = random_random
end
)

uiSecs.stuffs:addButton(
"No Karma",
function()
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Karma" then
v:Destroy()
end
end
end
)

uiSecs.opstuffs:addButton(
"Hide Chat",
function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:WaitForChild("SayMessageRequest"):Destroy()
end
)

uiSecs.opstuffs:addKeybind(
"Carrot God Final Move(You need a carrot god user to be in game)",
nil,
function()
  for i, v in pairs(game.Players:GetDescendants()) do
    if v.Name == "Fire" then
    v:InvokeServer({[1] = "Start"})
    end
    end
end)

venyx:SelectPage(venyx.pages[1], true)
uiSecs.opstuffs:addKeybind(
"Sus Spear(Undyne)",
nil,
function()
local A_1 = {
 [1] = getrenv()._G.Pass,
 [2] = "Spear",
 [3] = "Spawn",
 [4] = "Undying"
 }
 local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
 Event:InvokeServer(A_1)
a = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Attacks:WaitForChild("TSpear"))
a.Velocity = Vector3.new(9e9,9e9,9e9)
end)

uiSecs.opstuffs:addToggle(
"Anti patient rod yeet(anti-flying)",
false,
function(state)
  local vel
if state == true then
  char = game.Players.LocalPlayer.Character
  vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
  vel.Name = 'Client'
  vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
  vel.P = math.huge
  vel.Velocity = Vector3.new(0,0,0)
elseif state == false then
  vel:Destroy()
end
end)

uiSecs.opstuffs:addKeybind(
"Ultimate Sus Spear(Undyne)",
nil,
function()
local A_1 = {
 [1] = getrenv()._G.Pass,
 [2] = "Spear",
 [3] = "Spawn",
 [4] = "Undying"
 }
 local Event = game:GetService("ReplicatedStorage").Remotes.UndyneMoves
 Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.Attacks:WaitForChild("TSpear").BodyVelocity.Velocity = Vector3.new(9e9,9e9,9e9)
end)

uiSecs.opstuffs:addButton(
"How to use funni soul stel v3",
function()
venyx:Notify("Cheese Hub", [[Function: Victim get deleted if you use this with funni soul stel v2
so when u use the soul stel v2 wait until the spear hit the victim then use the v3 one
But it will only work if the victim is blocking or godmoded so the spear can make them get stuck]])
end)

uiSecs.opstuffs:addKeybind(
"Funni Soul stel v3(there is no spear to throw in this)",
nil,
function()
plr = game.Players.LocalPlayer
char = plr.Character
 char.Removing.BodyVelocity.Velocity = Vector3.new(20000,0,0)
 wait(2)
 char.Removing.BodyVelocity.Velocity = Vector3.new(0,-20000,0)
end)

uiSecs.opstuffs:addKeybind(
"Funny betty soul steal v2",
nil,
function()
local opsoulcd = false
function opsoul()
spawn(
function()
local target = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not target:FindFirstChild("Torso") then
return
end
opsoulcd = true
spawn(
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Start"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end
)
wait(4)
if not game.Players.LocalPlayer.Character:FindFirstChild("BettySpear") then
return
end
wait()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "BettySpear" then
spawn(
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Hit",
[4] = v,
[5] = target.Head.CFrame,
[6] = target.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end
)
end
end
end
)
wait(10)
opsoulcd = false
end
opsoul()
end
)

uiSecs.opstuffs:addKeybind(
"No Cooldown Betty Soul Steal",
nil,
function()
local opsoulcd = true 
function opsoul()
spawn(
function()
local target = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not target:FindFirstChild("Torso") then
return
end
opsoulcd = true
spawn(
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "TeleportSpear",
[3] = target
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end
)
wait(2)
if not game.Players.LocalPlayer.Character:FindFirstChild("BettySpear") then
return
end
wait()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "BettySpear" then
spawn(
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Spear",
[3] = "Hit",
[4] = v,
[5] = target.Head.CFrame,
[6] = target.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end
)
end
end
end
)
wait(10)
opsoulcd = false
end
opsoul()
end
)

uiSecs.stuffs:addToggle(
"XSans Bone",
false,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == "Bone" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Bone:Destroy()
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "ClownXBone"
sword2.Color = Color3.fromRGB(1, 0, 0)
weld.C0 = CFrame.new(-0.01, 0.5, 0)
sword2.Transparency = 0
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "ClownXBone" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Undyne Spear",
false,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == "Spear" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Spear:Destroy()
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "ClownSpear"
sword2.Color = Color3.fromRGB(0, 255, 255)
weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
sword2.Transparency = 0
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "ClownSpear" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"A Custom Flying Bones Thingy(Old Sans)",
false,
function(state)
local childad
if state == true then
childad = game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(v)

  if v.Name == "Bone" then

      v:WaitForChild("NotTouched"):Destroy()
      v:WaitForChild("ParticleEmitter"):Destroy()
      v:WaitForChild("BodyVelocity"):Destroy()

      v1 = Instance.new("BodyPosition", v)
      fol = Instance.new("Folder", v1)
      v1.Name = "Client"
      v1.MaxForce = Vector3.new(99999,99999,99999) * math.huge
      v1.D = math.huge
      v1.P = math.huge
      wait(5)
      v.Rotation = Vector3.new(0,0,0)

  end
end)

local radius = 7 --how far away do you want the parts to be from you
local circle = math.pi * 2-- Gets a full circle
local char = game.Players.LocalPlayer.Character
local tab = {}--Creates a table so you can insert values inside
local amm = 6---amount of projectiles
pass = getrenv()._G.Pass
for i = 1,amm,1 do
spawn(function()
  local A_1 = {
      [1] = getrenv()._G.Pass,
      [2] = "Bones",
      [3] = "AirSpawn2",
      [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  }
  local Target = game:GetService("ReplicatedStorage").Remotes.SansMoves
  Target:InvokeServer(A_1)
  wait()
end)
end
am = 0
local detect
local detect2
val = Instance.new('NumberValue',player)-- creates a value instance so you can use it in a connect function
val.Name = 'Bone'
detect = char.Attacks.ChildAdded:Connect(function(pp)-- this will detect if a child is added to the character
if pp.Name == 'Bone' then
  table.insert(tab,pp)--it will insert the blasts to the table
am = am + 1--adds the numbers
val.Value = am--set the Number value to that number
pp:WaitForChild('BodyVelocity'):Destroy()
pp:WaitForChild('Hitted'):Destroy()
end
end)

detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()-- detects if the value is equal to the amount of time the remote is fired
if val.Value == amm then
tab2 = {}
for _,v in pairs(tab) do---will look through the tables
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(math.random(-20,20),1000,math.random(-20,20))
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 500
v1.P = 30000
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,0,0)
      table.insert(tab2,v1)
end

for i = 1,#tab2 do
spawn(function()
local angle = circle / #tab2 * i---this will get the amount of parts you have and multiply with the current i to get the proper postion to make a circle
  local part = tab2[i]
local  mspeed = 0

while true do
  wait()
  mspeed = mspeed + 2-- change it to a higher number if u want it faster
  local x_pos = math.cos(angle) * radius
  local y_pos = math.sin(angle) * radius
  
  local cf = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(mspeed), math.rad(mspeed),math.rad(0)) *CFrame.new(x_pos, 0, y_pos)
  part.Position = cf.p


end
end)
end
val:Destroy()
detect:Disconnect()
detect2:Disconnect()
end
end)
wait(15)
local radius = 12 --how far away do you want the parts to be from you
local circle = math.pi * 2-- Gets a full circle
local char = game.Players.LocalPlayer.Character
local tab = {}--Creates a table so you can insert values inside
local amm = 8 ---amount of projectiles
pass = getrenv()._G.Pass
for i = 1,amm,1 do
spawn(function()
  local A_1 = {
      [1] = getrenv()._G.Pass,
      [2] = "Bones",
      [3] = "AirSpawn2",
      [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  }
  local Target = game:GetService("ReplicatedStorage").Remotes.SansMoves
  Target:InvokeServer(A_1)
  wait()
end)
end
am = 0
local detect
local detect2
val = Instance.new('NumberValue',player)-- creates a value instance so you can use it in a connect function
val.Name = 'Bone'
detect = char.Attacks.ChildAdded:Connect(function(pp)-- this will detect if a child is added to the character
if pp.Name == 'Bone' then
  table.insert(tab,pp)--it will insert the blasts to the table
am = am + 1--adds the numbers
val.Value = am--set the Number value to that number
pp:WaitForChild('BodyVelocity'):Destroy()
pp:WaitForChild('Hitted'):Destroy()
end
end)

detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()-- detects if the value is equal to the amount of time the remote is fired
if val.Value == amm then
tab2 = {}
for _,v in pairs(tab) do---will look through the tables
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(math.random(-20,20),1000,math.random(-20,20))
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 500
v1.P = 30000
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,0,0)
      table.insert(tab2,v1)
end
local height = -1
spawn(function()
  while true do 
      height = -2
     wait()
     
height = -3
wait(0.1)
height = -4
wait(0.1)
  height = -3
wait(0.1)
    height = -2
   wait(0.1)
      height = -1
  end
  end)
for i = 1,#tab2 do
spawn(function()
local angle = circle / #tab2 * i---this will get the amount of parts you have and multiply with the current i to get the proper postion to make a circle
  local part = tab2[i]
local  mspeed = 0

while true do
  wait()
  mspeed = mspeed + 10-- change it to a higher number if u want it faster
  local x_pos = math.cos(angle) * radius
  local y_pos = math.sin(angle) * radius
  
  local cf = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(mspeed),math.rad(0)) *CFrame.new(x_pos, height, y_pos)
  part.Position = cf.p


end
end)
end
val:Destroy()
detect:Disconnect()
detect2:Disconnect()
end
end)
wait(7)

local radius = 25 --how far away do you want the parts to be from you
local circle = math.pi * 2-- Gets a full circle
local char = game.Players.LocalPlayer.Character
local tab = {}--Creates a table so you can insert values inside
local amm = 14 ---amount of projectiles
pass = getrenv()._G.Pass
for i = 1,amm,1 do
spawn(function()
  local A_1 = {
      [1] = getrenv()._G.Pass,
      [2] = "Bones",
      [3] = "AirSpawn2",
      [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
  }
  local Target = game:GetService("ReplicatedStorage").Remotes.SansMoves
  Target:InvokeServer(A_1)
  wait()
end)
end
am = 0
local detect
local detect2
val = Instance.new('NumberValue',player)-- creates a value instance so you can use it in a connect function
val.Name = 'Bone'
detect = char.Attacks.ChildAdded:Connect(function(pp)-- this will detect if a child is added to the character
if pp.Name == 'Bone' then
  table.insert(tab,pp)--it will insert the blasts to the table
am = am + 1--adds the numbers
val.Value = am--set the Number value to that number
pp:WaitForChild('BodyVelocity'):Destroy()
pp:WaitForChild('Hitted'):Destroy()
end
end)

detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()-- detects if the value is equal to the amount of time the remote is fired
if val.Value == amm then
tab2 = {}
for _,v in pairs(tab) do---will look through the tables
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(math.random(-20,20),1000,math.random(-20,20))
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 500
v1.P = 30000
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,0,0)
      table.insert(tab2,v1)
end
local rot = 10
local height2 = -1
spawn(function()
  while true do 
      height = -2
     wait()
     rot = rot + 10
height2 = -3
    rot = rot + 10
wait(0.1)
height2 = -4
    rot = rot + 10
wait(0.1)
  height2 = -3
      rot = rot + 10
wait(0.1)
    height2 = -2
        rot = rot + 10
   wait(0.1)
      height2 = -1
          rot = rot + 10
  end
  end)
for i = 1,#tab2 do
spawn(function()
local angle = circle / #tab2 * i---this will get the amount of parts you have and multiply with the current i to get the proper postion to make a circle
  local part = tab2[i]
local  mspeed = 0

while true do
  wait()
  mspeed = mspeed + 4-- change it to a higher number if u want it faster
  local x_pos = math.cos(angle) * radius
  local y_pos = math.sin(angle) * radius
  
  local cf = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(mspeed),math.rad(0)) *CFrame.new(x_pos, height2, y_pos)
  part.Position = cf.p


end
end)
end
val:Destroy()
detect:Disconnect()
detect2:Disconnect()
end
end)
elseif state == false then
  game.Players.LocalPlayer.Character.Attacks:ClearAllChildren()
  childad:Disconnect()
end
end)

uiSecs.stuffs:addToggle(
"GTFrisk Sword",
false,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == "GTFriskSword" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "GTClownSword"
sword2.Color = Color3.fromRGB(255, 0, 0)
weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
sword2.Transparency = 0
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "GTClownSword" then
v:Destroy()
end
end
end
end
)

uiSecs.stuffs:addToggle(
"Hate Knife(Updated)",
false,
function()
 spawn(function()
game.Players.LocalPlayer.Character.RealKnife.Blade.SpecialHell:Destroy()
 end)
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeColor",
[3] = "ChangeColor",
[4] = Color3.fromRGB(0, 0, 0),
[5] = 0,
[6] = "SpecialHell"
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "KnifeColor",
[3] = "ChangeColor",
[4] = Color3.fromRGB(0, 0, 0),
[5] = 0,
[6] = "RedMode"
}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end
)

uiSecs.main:addButton(
"Fly Bind is T",
function()
loadstring(game:HttpGet("https://pastebin.com/raw/2DsZ55C9", true))()
end
)

uiSecs.main:addButton(
"True Reset",
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Reset"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end
)

uiSecs.main:addButton(
"Hide name(on menu and choose ur char)",
function()
game.Players.LocalPlayer.CharacterAdded:Connect(
function(char)
char:WaitForChild("Head"):WaitForChild("HealthBar"):WaitForChild("Frame"):WaitForChild("PName"):Destroy()
end)
end
)

uiSecs.main:addButton("========== GODMODE METHODS ==========")

uiSecs.main:addButton(
"InvFrame GodMode",
function()
loadstring(
game:HttpGet(
"https://gist.githubusercontent.com/LiterallyATrueClown/3accafca439db109b4e1955989c60440/raw/a325e2a76e9494f92052e5cc2951ab326848e61f/Ehh2",
true
)
)()
end
)

uiSecs.main:addButton(
"Old Sans GodMode",
function()
if game.Players.LocalPlayer.Character:WaitForChild("Head") then
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Telekinesis",
[3] = "Special"
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end
end
)

uiSecs.main:addButton(
"Godmode for all character except undyne cuz she is too pro",
function()
game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
wait(1)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Reset"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
Spawn(
function()
while wait() do
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
end
end
)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer["PlayerGui"]:WaitForChild("CharacterSelection", 100):Destroy()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end
)

uiSecs.main:addButton(
"GTChara Godmode",
function()
  game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
  game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
  wait(1)
  game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
  local v1 = {
      [1] = getrenv()._G.Pass, 
      [2] = "Damage", 
      [3] = "inf", 
      [4] = game.Players.LocalPlayer.Character
  }
  local event = game:GetService("ReplicatedStorage").Remotes.Events
  event:FireServer(v1)
  game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
      if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
      game.Players.LocalPlayer.Character.Humanoid.Health = 1
      end
  end)
end
)

skinlist = {
"GTChara Skin",
"Old Sans Skin",
"SF Chara Skin"
}

uiSecs.ctskin:addDropdown(
"Choose a skin(Non-FE)",
skinlist,
function(skinvl)
vl = skinvl
end
)

uiSecs.ctskin:addButton(
"Add skin",
function()
if vl == "GTChara Skin" then
for i, v in pairs((game.Players.LocalPlayer.Character):GetDescendants()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
v:Destroy()
end
end
spawn(function()
 game.Players.LocalPlayer.Character:WaitForChild("Head"):FindFirstChild("face"):Destroy()
end)
Face = Instance.new("Decal", game.Players.LocalPlayer.Character:WaitForChild("Head"))
 Face.Name = "face"
 Face.Texture = "rbxassetid://4899267128"
game.Players.LocalPlayer.Character:WaitForChild("Head").BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.Pants:Clone().Parent =
game.Players.LocalPlayer.Character
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.Shirt:Clone().Parent =
game.Players.LocalPlayer.Character
for _, v in pairs(
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.CharaHead:GetChildren()
) do
if v.Name == "Hair" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
sword2.Mesh.Scale = Vector3.new(0.8, 0.8, 1)
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
weld.C0 = CFrame.new(0, -0.2, -0) * CFrame.Angles(0, 0, 0)
end
end
end
if vl == "Asriel Skin" then
for i, v in pairs((game.Players.LocalPlayer.Character):GetDescendants()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
v:Destroy()
end
end
spawn(function()
game.Players.LocalPlayer.Character:WaitForChild("Head"):FindFirstChild("face"):Destroy()
end)
local Face = Instance.new("Decal", game.Players.LocalPlayer.Character:WaitForChild("Head"))
Face.Name = "face"
Face.Texture = "rbxassetid://4899267128"
game.Players.LocalPlayer.Character:WaitForChild("Head").BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Asriel.Pants:Clone().Parent =
game.Players.LocalPlayer.Character
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Asriel.Shirt:Clone().Parent =
game.Players.LocalPlayer.Character
end
if vl == "SF Chara Skin" then
for i, v in pairs((game.Players.LocalPlayer.Character):GetDescendants()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
v:Destroy()
end
end
spawn(function()
 game.Players.LocalPlayer.Character:WaitForChild("Head"):FindFirstChild("face"):Destroy()
end)
local Face = Instance.new("Decal", game.Players.LocalPlayer.Character:WaitForChild("Head"))
Face.Name = "face"
Face.Texture = "rbxassetid://381193106"
game.Players.LocalPlayer.Character:WaitForChild("Head").BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara.Pants:Clone().Parent =
game.Players.LocalPlayer.Character
game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara.Shirt:Clone().Parent =
game.Players.LocalPlayer.Character
game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara.Scarf:Clone().Parent =
game.Players.LocalPlayer.Character
local char = game.Players.LocalPlayer.Character
sword2 = char.Scarf.Base
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Torso"]
weld.C0 = CFrame.new(0, 0.3, -0)
local char = game.Players.LocalPlayer.Character
sword2 = char.SSCharaHead.Middle
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
weld.C0 = CFrame.new(0, 0, 0)
end
end
)

teleList = {
"Sans Area(Small Box)",
"Secret house",
"Sans Area(Large Box)",
"Arena 1",
"Arena 2",
"Arena 3",
"Arena 4",
"Medium Chain",
"Big Chain",
"Small Chain",
"Undertale Map",
"Cherry Blossom Map"
}

uiSecs.place1:addDropdown(
"Teleportable Places",
teleList,
function(placestp)
worldtp = placestp
end
)

uiSecs.place1:addButton(
"Teleport to that place",
function()
if worldtp == "Secret house" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(
-385.056732,
1117.49927,
1236.89026,
0.0316926986,
-0.0196113884,
0.999304831,
0.0301083066,
0.999372423,
0.0186579525,
-0.999043584,
0.0294960812,
0.0322632939
)
end
if worldtp == "Cherry Blossom Map" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1073, 42, 122)
   end
   if worldtp == "Undertale Map" then
     game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Ruins.GrassEntrance.Grass.Position)
   end
if worldtp == "Sans Area(Center)" then
if not game:GetService("Workspace"):FindFirstChild("SansArea").Base then
venyx:Notify("Sans Area not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):FindFirstChild("SansArea").Base.CFrame
end
end
if worldtp == "Sans Area(Center)" then
if not game:GetService("Workspace"):FindFirstChild("SansArea").Base then
venyx:Notify("Sans Area not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):FindFirstChild("SansArea").Base.CFrame
end
end
if worldtp == "Sans Area(Outside of the Small Box)" then
if not game:GetService("Workspace"):FindFirstChild("SansArea").Base then
venyx:Notify("Sans Area not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(-399.156158, 538.68042, 82.3667908, -0.980780959, -0.13139689, 0.144233018, -0.109529518, 0.982552409, 0.150311708, -0.161466926, 0.131625056, -0.978060842)
end
end
if worldtp == "Arena 1" then
if not game:GetService("Workspace"):FindFirstChild("Arena1").Spawn1 then
venyx:Notify("Arena 1 not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):FindFirstChild("Arena1").Spawn1.CFrame
end
end
if worldtp == "Arena 2" then
if not game:GetService("Workspace"):FindFirstChild("Arena2").Spawn1 then
venyx:Notify("Arena 2 not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):FindFirstChild("Arena2").Spawn1.CFrame
end
end
if worldtp == "Arena 3" then
if not game:GetService("Workspace"):FindFirstChild("Arena3").Spawn1 then
venyx:Notify("Arena 3 not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):FindFirstChild("Arena3").Spawn1.CFrame
end
end
if worldtp == "Arena 4" then
if not game:GetService("Workspace"):FindFirstChild("Arena4").Spawn1 then
venyx:Notify("Arena 4 not found!")
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace"):WaitForChild("Arena4").Spawn1.CFrame
end
end
if worldtp == "Medium Chain" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(868.253845, 624.559082, -16.883234, 0.898173511, 0.0460866727, 0.437218487, -0.109529473, 0.986589909, 0.121010035, -0.425778419, -0.156576201, 0.891176879)
end
if worldtp == "Small Chain" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(868.253845, 624.559082, -16.883234, 0.898173511, 0.0460866727, 0.437218487, -0.109529473, 0.986589909, 0.121010035, -0.425778419, -0.156576201, 0.891176879)
end
if worldtp == "Big Chain" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(488.997955, 1030.06213, -637.114746, -0.250377834, 0.558137059, -0.791071415, -0.0737083629, 0.803736687, 0.590402007, 0.96533829, 0.206132174, -0.160098463)
end
if worldtp == "Small pillars" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(1450.68408, 585.908997, 572.532593, 0.993982315, 0.109028935, 0.0105502009, -0.109493233, 0.986192524, 0.124238171, 0.00314101577, -0.12464568, 0.992196202)
end
if worldtp == "Big pillars" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(543.962708, 1676.10144, 567.631958, 0.607498527, 0.652085185, -0.453574955, -0.116479665, 0.637981653, 0.76119101, 0.785734057, -0.409590155, 0.46352762)
end
end
)

uiSecs.opstuffs:addButton(
"Warning when using soul stel reflect",
function()
venyx:Notify("Cheese Hub", [[1-The script will reflect everyone's spear, including yours so disable the script before using betty spear's
2-Don't spam the toggle because of the script is looped >:(
3-Use this to afk soul havesting, killing skids]])
end)

uiSecs.opstuffs:addToggle(
"Soul steal reflecting",
false,
function(state)
 if state == true then
repeat wait(1)
   for i, v in pairs(game.Workspace:GetDescendants()) do
   if v.Name == "BettySpear" and not v.Parent ~= game.Players.LocalPlayer.Character  then
       spawn(
       function()
      A_1 = {
       [1] = getrenv()._G.Pass,
       [2] = "Spear",
       [3] = "Hit",
       [4] = v,
       [5] = v.Parent.Head.CFrame,
       [6] = v.Parent.Head
   }
   Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
   Event:InvokeServer(A_1)
       end
       )
   end
   end
 until state == false
end
end)

uiSecs.custom1:addButton(
"Max Lv Frisk(Other Player)",
function()
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "Damage",
[3] = math.huge,
[4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
}
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
end)

uiSecs.custom1:addButton(
"Instant Lv Frisk",
function()
local args = {
[1] = {
[1] = getrenv()._G.Pass,
[2] = "Damage",
[3] = math.huge,
[4] = game.Players.LocalPlayer.Character
}
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
end
)

uiSecs.custom7:addButton(
"GTChara Season 2(How to use)",
function()
venyx:Notify("Cheese Hub", "Use in betty phase 2 but you must set scythe mode enabled then execute")
end
)

uiSecs.custom7:addButton(
"GTChara Season 2",
function(aaa)
local lcplr = game.Players.LocalPlayer
local char = lcplr.Character
local mouse = lcplr:GetMouse()
-- animations
lcplr.Backpack:WaitForChild("Main").BettyMoves:WaitForChild("Animations").Block.AnimationId =
"rbxassetid://5658608532"
lcplr.Backpack:WaitForChild("Main").BettyMoves:WaitForChild("Animations").Idle2.AnimationId =
"rbxassetid://4900761581"
lcplr.Backpack:WaitForChild("Main").BettyMoves:WaitForChild("Animations").Walk2.AnimationId =
"rbxassetid://5657167417"
lcplr.Backpack:WaitForChild("Main").BettyMoves:WaitForChild("Animations").Run2.AnimationId =
"rbxassetid://3222477616"
-- lmb Animations
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId =
"rbxassetid://4612153931"
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId =
"rbxassetid://5657144478"
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId =
"rbxassetid://4800254068"
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId =
"rbxassetid://4612156829"
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId =
"rbxassetid://4800258366"
lcplr.Backpack:WaitForChild("Main").BettyMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId =
"rbxassetid://5941498513"
game.Players.LocalPlayer.Chatted:connect(
function(arg_1)
local SW_4 = getrenv()._G.Pass
local SW_5 = "Chatted"
local SW_6 = arg_1
local SW_7 = Color3.fromRGB(255, 0, 0)
game.ReplicatedStorage.Remotes.Events:FireServer({SW_4, SW_5, SW_6, SW_7})
end
)

local function chat(txt)
game.Players:Chat((txt))
end

for i, v in pairs((game.Players.LocalPlayer.Character):GetDescendants()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
v:Destroy()
end
end
uiSecs.GTC = uiPages.output1:addSection("Glitchtale Chara Season 2 Stuffs")
uiSecs.GTC:addKeybind(
"Sword Knock Out",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657458641"
local k = char.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.2)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = lcplr.Backpack.Main.BettyMoves.ModuleScript.Animations.Slash.Swing2,
[4] = Color3.fromRGB(255, 0, 0),
[5] = CFrame.Angles(0, 2.5, -2.5)
}
)
local args = {
[1] = getrenv()._G.Pass,
[2] = lcplr.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = char.HumanoidRootPart.CFrame.lookVector * 70,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["GTSlash2"],
["Damage"] = 40
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.GTC:addKeybind(
"Determination Explosion",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "HateExplosion"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
for i = 1, 3, 1 do
for i, v in pairs(
char:WaitForChild("Effects"):WaitForChild("HateScytheExplosionStart"):GetDescendants()
) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.BrickColor = BrickColor.new("Really red")
end
end
for i, v in pairs(
char:WaitForChild("Effects"):WaitForChild("ConstantExplosions"):GetDescendants()
) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Really red")
end
end
for i, v in pairs(
char:WaitForChild("Effects"):WaitForChild("HateScytheExplosionStart"):GetDescendants()
) do
if v:IsA("ParticleEmitter") then
v.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
end
end
game:GetService("Workspace").ServerEffects.ServerCooldown[lcplr.Name]:WaitForChild(
"HateExplosionDebounce"
).Value = ""
game:GetService("Workspace").ServerEffects.ServerCooldown[lcplr.Name]:WaitForChild(
"HateExplosionDebounce"
).Parent = nil
end
end,
function()
end
)

uiSecs.GTC:addKeybind(
"Sword Slashes",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5658856843"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait()
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["GTSlash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 65 +
Vector3.new(0, 100, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["GTSlash2"],
["Damage"] = 30
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.GTC:addKeybind(
"Sword Swing",
nil,
function()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ScytheDash"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.GTC:addKeybind(
"STAY DOWN!",
nil,
function()
chat("Stay down!")
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettySpikeProjectile",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "BettySpikeProjectile",
[3] = "Release"
}
local Event = game:GetService("ReplicatedStorage").Remotes.BettyMoves
Event:InvokeServer(A_1)
end,
function()
end
)

uiSecs.GTC:addKeybind(
"Knife Slashes",
nil,
function()
chat("=)")
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348265296"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4333546395"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348301706"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348287123"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348265296"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds["Knife_Slash2"],
["Damage"] = 10
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5079333382"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
wait()
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "BiggerBurstEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, 80, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70,
["HitTime"] = 0,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushCharge,
["Damage"] = 40
}
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)
-- song
lcplr["DeathPlaylist"]:ClearAllChildren()
KG = Instance.new("Sound", lcplr["DeathPlaylist"])
KG.Volume = 4
KG.SoundId = "rbxassetid://5692967101"
KG.Looped = true
KG:Play()
char["BettyFinalKnife"]:Destroy()
char["BettyFinalKnife"]:Destroy()
char["DarkHead"]:Destroy()
char["Head"]["HealthBar"]["Frame"]["KumuBar"]:Destroy()
char["KumuRegen"]:Destroy()
char["Karma"]:Destroy()
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND = "CantAttack"
CAS:BindActionAtPriority(
FREEZE_COMMAND,
function()
return Enum.ContextActionResult.Sink
end,
false,
Enum.ContextActionPriority.High.Value,
Enum.KeyCode.One,
Enum.KeyCode.Two,
Enum.KeyCode.Three,
Enum.KeyCode.Four,
Enum.KeyCode.Five,
Enum.KeyCode.Six,
Enum.KeyCode.Seven,
Enum.KeyCode.Q,
Enum.KeyCode.E,
Enum.KeyCode.Eight
)

-- stam, mana bar
local player = lcplr
local plrGui = player:WaitForChild("PlayerGui")
local ui1 = plrGui:WaitForChild("UI")
local ui = ui1:WaitForChild("Ui")
ui.UpdateLog:Destroy()
ui.UpdateLogInfo:Destroy()
ui.Info.ServerInfo.Position = UDim2.new(0.050, 0, 0.001, 0)
ui.Info.ServerInfo2.Position = UDim2.new(0.050, 0, 0.013, 0)
ui.Info.Attack.Position = UDim2.new(0.004, 0, 0.93, 0)
ui.Info.Defense.Position = UDim2.new(0.004, 0, 0.96, 0)
ui.StaminaBar.BackgroundTransparency = 0.6
ui.ManaBar.BackgroundTransparency = 0.6
ui.StaminaBar.ImageLabel:Destroy()
ui.ManaBar.AnchorPoint = Vector2.new(0.5, 0.5)
ui.ManaBar.Position = UDim2.new(0.5, 0, 0.978, 0)
ui.ManaBar.Size = UDim2.new(0.302, 0, 0.01, 0)
ui.StaminaBar.Size = UDim2.new(0.4, 0, 0.01, 0)
ui.StaminaBar.AnchorPoint = Vector2.new(0.5, 0.5)
ui.StaminaBar.Position = UDim2.new(0.5, 0, 0.99, 0)
ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
local corner = Instance.new("UICorner")
corner.Parent = ui.StaminaBar
corner:Clone().Parent = ui.StaminaBar.Bar
corner:Clone().Parent = ui.ManaBar.Bar
corner:Clone().Parent = ui.ManaBar
ui.Info.Attack.Text = "Attack:150"
ui.Info.Defense.Text = "Defense:200"
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
Color3.fromRGB(255, 0, 0)
char.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 0, 0)
char.Head.HealthBar.Frame.PName.Text = " Chara"
char.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
lcplr.PlayerGui:FindFirstChild("SansIndicator").Indicator2.AnchorPoint = Vector2.new(0.5, 0.5)
lcplr.PlayerGui:FindFirstChild("SansIndicator").Indicator2.Position = UDim2.new(0.5, 0, 0.93, 0)
wait(1)
-- chara skin
game.Players.LocalPlayer.Character:WaitForChild("Head").face.Texture = "rbxassetid://946610608"
game.Players.LocalPlayer.Character:WaitForChild("Head").BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.Pants:Clone().Parent =
game.Players.LocalPlayer.Character
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.Shirt:Clone().Parent =
game.Players.LocalPlayer.Character
for _, v in pairs(
game:GetService("ReplicatedStorage").Resources.Character.Accessories.Chara.CharaHead:GetChildren()
) do
if v.Name == "Hair" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
sword2.Mesh.Scale = Vector3.new(0.8, 0.8, 1)
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
weld.C0 = CFrame.new(0, -0.2, -0) * CFrame.Angles(0, 0, 0)
end
end
-- Delete Hit + fake godmode
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char:GetChildren()) do
if
v.Name == "Hit" or v.Name == "Hitt" or v.Name == "Damaged" or v.Name == "Grounded" or
v.Name == "StayGrounded" or
v.Name == "KnockBack" or
v.Name == "Walled"
then
v:Destroy()
end
end
until false
end
)
spawn(
function()
repeat
wait()
for _, v in pairs(char.HumanoidRootPart:GetChildren()) do
if v.Name == "Server" then
v:Destroy()
end
end
until false
end
)
spawn(
function()
while wait() do
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
unpack(
{
[1] = {
[1] = getrenv()._G.Pass,
[2] = "InvFrames",
[3] = 5
}
}
)
)
end
end)

-- Inf Stamina
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
task.wait()
v:Destroy()
end
end)

-- add sword, knife and hide scythe
spawn(
function()
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == "GTFriskSword" then
local char = char
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
sword2.Name = "GTCharaSword"
sword2.Color = Color3.fromRGB(255, 0, 0)
-- CFrame.new(0.95, -1.8, -0) * CFrame.Angles(1.6, 0, -1.6)
weld.C0 = CFrame.new(0, -2.5, -0) * CFrame.Angles(0, -1.8, -22)
sword2.Reflectance = 5
sword2.Transparency = 0.4
end
end
local lcplr = game.Players.LocalPlayer
local char = lcplr.Character
local cl = game:GetService("ReplicatedStorage").Weapons.RealKnife:Clone()
cl.Parent = char
cl.Name = "GTCharaKnife"
char.GTCharaKnife.HandleC0.Part0 = char["Left Arm"]
char.GTCharaKnife.Handle.Transparency = 0.4
char.GTCharaKnife.Handle.BrickColor = BrickColor.new("Really red")
char.GTCharaKnife.Handle.Material = "Neon"
char.GTCharaKnife.Blade.Transparency = 0.4
char.GTCharaKnife.Blade.BrickColor = BrickColor.new("Really red")
char.GTCharaKnife.Blade.RedMode.Enabled = true
char.GTCharaKnife.Blade.RedMode.Rate = 25
char.GTCharaKnife.Trail.Enabled = true
char.GTCharaKnife.Trail.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
char.GTCharaKnife.Trail.Lifetime = 1
end
)

spawn(
function()
while wait(1) do
for i, v in pairs(char:GetChildren()) do
if v.Name == "BettySythe" then
for i, v in pairs(char.BettySythe:GetChildren()) do
if v.Name == "BettySythe" then
v.Transparency = 1
end
end
end
end
end
end
)
-- change text
local hatevalue = char["Hate"].Value
spawn(
function()
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.SansIndicator.Indicator2.Text =
"Determination: " .. math.floor(hatevalue) .. "%"
end
end
)
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SansIndicator").Indicator2.TextColor3 =
Color3.fromRGB(255, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SansIndicator").Indicator2.TextStrokeColor3 =
Color3.fromRGB(0, 0, 0)
-- hide gui
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SansIndicator").Indicator.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SansIndicator").Help.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui:FindFirstChild("MoveDebounceShower").Visible = false
wait(2)
loadstring(
game:HttpGet("https://gist.githubusercontent.com/LiterallyATrueClown/3accafca439db109b4e1955989c60440/raw/a325e2a76e9494f92052e5cc2951ab326848e61f/Ehh2",true))()
end)

uiSecs.custom7:addButton(
"Neko Betty",
function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Shinichi-Shinici/2502cd18a66fd2250bd68c0c6c24abed/raw/844e730df9f2575b8d03874a56095cda1c79fb12/Noke%2520Petty", true))()
end)

uiSecs.custom7:addButton(
"Reapertale Chara",
function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/Shinichi-Shinici/b08209f61b4634b8735d3013ef5c983e/raw/3b6f687cd1f2b82b92584d3a3b66aaec2fddc84c/Rapper%2520Cherry", true))()
end)

uiSecs.custom:addButton(
"The Chosen One",
function()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
game.Players.LocalPlayer.CharacterAdded:Connect(
function()
wait(1)
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId =
"rbxassetid://5094584301"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId =
"rbxassetid://5096058312"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId =
"rbxassetid://6136050723"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId =
"rbxassetid://6136052357"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId =
"rbxassetid://4088050522"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId =
"rbxassetid://4576074471"
wait(1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId =
"rbxassetid://4929688526"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId =
"rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId =
"rbxassetid://4929684994"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId =
"rbxassetid://4929688526"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId =
"rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId =
"rbxassetid://4929737220"

game.Players.LocalPlayer.Character:WaitForChild("RealKnife"):Destroy()
game.Players.LocalPlayer.Character:WaitForChild("Karma"):Destroy()
game.Players.LocalPlayer.Character:WaitForChild("HeartLocket"):Destroy()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").HipHeight = 1
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND = "CantAttack"
CAS:BindActionAtPriority(
FREEZE_COMMAND,
function()
return Enum.ContextActionResult.Sink
end,
false,
Enum.ContextActionPriority.High.Value,
Enum.KeyCode.One,
Enum.KeyCode.Two,
Enum.KeyCode.Three,
Enum.KeyCode.Four,
Enum.KeyCode.Five,
Enum.KeyCode.Six
)
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
  if v.Name == "Flame" then
  local char = game.Players.LocalPlayer.Character
  sword2 = v:Clone()
  sword2.Parent = char
  sword2.Anchored = false
  weld = Instance.new("Weld", sword2)
  weld.Part0 = sword2
  weld.Part1 = char["Right Arm"]
  weld.C0 = CFrame.new(0, 0.1, 0)
  sword2.Transparency = 1
  end
  end
  for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
  if v.Name == "Flame" then
  local char = game.Players.LocalPlayer.Character
  sword2 = v:Clone()
  sword2.Parent = char
  sword2.Anchored = false
  weld = Instance.new("Weld", sword2)
  weld.Part0 = sword2
  weld.Part1 = char["Left Arm"]
  weld.C0 = CFrame.new(0, 0.1, 0)
  sword2.Transparency = 1
  end
  end
  
for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
  if v.Name == "RedEyes" then
  local char = game.Players.LocalPlayer.Character
  sword2 = v:Clone()
  sword2.Parent = char
  sword2.Anchored = false
  weld = Instance.new("Weld", sword2)
  weld.Part0 = sword2
  weld.Part1 = char["Head"]
  weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
  sword2.Transparency = 1
  end
  end
  wait(1)
for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui:GetChildren()) do
if v.Name == "MoveDebounceShower" then
v:Destroy()
end
end

spawn(function()
while wait(0.1) do
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.Text = "The Choosen One"
end
end)

game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.HealthLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:250"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:350"
game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 65
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
Color3.new(0, 255, 255)
local plr = game.Players.LocalPlayer
game.Workspace.Gravity = 70
plr.Character.Humanoid.JumpPower = "70"
game.Workspace.Gravity = 70
plr.Character.Humanoid.JumpPower = "70"
local billboard = plr.Character:WaitForChild("Head"):WaitForChild("HealthBar").Frame
billboard.Health.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
local kg = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
kg.Volume = 4
kg.SoundId = "rbxassetid://582476855"
kg.Looped = true
kg:Play()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChangeSetting",
[3] = "DeathScene",
[4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
local UserInputService = game:GetService("UserInputService")

local character = game.Players.LocalPlayer.Character

local humanoid = character:WaitForChild("Humanoid")

local doubleJumpEnabled = false

humanoid.StateChanged:Connect(
function(oldState, newState)
if newState == Enum.HumanoidStateType.Jumping then
if not doubleJumpEnabled then
wait(.5)
if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
doubleJumpEnabled = true
end
end
elseif newState == Enum.HumanoidStateType.Landed then
doubleJumpEnabled = false
end
loadstring(game:HttpGet("https://gist.githubusercontent.com/LiterallyATrueClown/3accafca439db109b4e1955989c60440/raw/a325e2a76e9494f92052e5cc2951ab326848e61f/Ehh2",true))()
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
  if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
  task.wait()
  v:Destroy()
  end
  end)
end
)

UserInputService.InputBegan:Connect(
function(inputObject)
if inputObject.KeyCode == Enum.KeyCode.Space then
if doubleJumpEnabled then
if humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
spawn(
function()
doubleJumpEnabled = false
end
)
end
end
end
end
)

game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
  if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    wait(5)
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://7004737889"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1)
    wait(3.9)
    for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
    if v.Name == "DarkAuraEffect" then
    local char = game.Players.LocalPlayer.Character
    sword2 = v:Clone()
    sword2.Parent = char
    sword2.Anchored = false
    weld = Instance.new("Weld", sword2)
    weld.Part0 = sword2
    weld.Part1 = char["Torso"]
    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
    sword2.Transparency = 1
    end
    end
    for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
    if v.Name == "TransformationAura" then
    local char = game.Players.LocalPlayer.Character
    sword2 = v:Clone()
    sword2.Parent = char
    sword2.Anchored = false
    weld = Instance.new("Weld", sword2)
    weld.Part0 = sword2
    weld.Part1 = char["Torso"]
    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
    sword2.Transparency = 1
    end
    end
    end
    
    uiSecs.TCO:addToggle(
    "IDK's Dark Aura",
    true,
    function(state)
    if state == true then
    for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
    if v.Name == "DarkAuraEffect" then
    local char = game.Players.LocalPlayer.Character
    sword2 = v:Clone()
    sword2.Parent = char
    sword2.Anchored = false
    weld = Instance.new("Weld", sword2)
    weld.Part0 = sword2
    weld.Part1 = char["Torso"]
    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
    sword2.Transparency = 1
    end
    end
    for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
    if v.Name == "TransformationAura" then
    local char = game.Players.LocalPlayer.Character
    sword2 = v:Clone()
    sword2.Parent = char
    sword2.Anchored = false
    weld = Instance.new("Weld", sword2)
    weld.Part0 = sword2
    weld.Part1 = char["Torso"]
    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
    sword2.Transparency = 1
    end
    end
    end
    
    if state == false then
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == "TransformationAura" then
    v:Destroy()
    end
    end
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == "DarkAuraEffect" then
    v:Destroy()
    end
    end
    end
    end
    )
    local kg = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
    kg.Volume = 5
    kg.SoundId = "rbxassetid://582476855"
    kg.Looped = true
    kg:Play()
  end)
end)


uiSecs.TCO = uiPages.output1:addSection("The Chosen One Stuffs")
uiSecs.TCO:addKeybind(
"Delta Combo",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5858687214"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, 10, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 15
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.7)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -5, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 15
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.4)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(10, -10, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
["HitTime"] = 0,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
["Damage"] = 15
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.TCO:addKeybind(
"Heavy Barrage",
nil,
function()
  for i = 1,10,1 do
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800436094"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0.111111111, 0, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 10
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end,
function()
end
)

uiSecs.TCO:addKeybind(
"Upper Cut",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300091335"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, 20, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.TCO:addKeybind(
"Upper Cut Combo",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300091335"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Normal",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, 25, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 2
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame *
CFrame.new(3, 0, 0)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.Anchored = true
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3757696820"
local AnimTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
AnimTrack.Priority = Enum.AnimationPriority.Action
AnimTrack:Play()
AnimTrack:AdjustSpeed(1)
AnimTrack.Priority = Enum.AnimationPriority.Action
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -20, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3757696820"
local AnimTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
AnimTrack.Priority = Enum.AnimationPriority.Action
AnimTrack:Play()
AnimTrack:AdjustSpeed(1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -20, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
AnimTrack.Priority = Enum.AnimationPriority.Action
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -20, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
AnimTrack.Priority = Enum.AnimationPriority.Action
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(0, -20, 0),
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
AnimTrack.Priority = Enum.AnimationPriority.Action
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = Vector3.new(100, 50, 0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.Anchored = false
AnimTrack.Priority = Enum.AnimationPriority.Action
end,
function()
end
)

uiSecs.TCO:addKeybind(
"Knock Out",
nil,
function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5770470014"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.3)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
["Type"] = "Knockback",
["HitEffect"] = "HeavyHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70,
["HitTime"] = 1,
["CombatInv"] = true,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
["Damage"] = 40
}
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end,
function()
end
)

uiSecs.TCO:addToggle(
"Flame Arms Aura",
true,
function(state)
if state == true then
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "Flame" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Right Arm"]
weld.C0 = CFrame.new(0, 0.1, 0)
sword2.Transparency = 1
end
end
for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
if v.Name == "Flame" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Left Arm"]
weld.C0 = CFrame.new(0, 0.1, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Flame" then
v:Destroy()
end
end
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Flame" then
v:Destroy()
end
end
end
end
)

uiSecs.TCO:addToggle(
"Faceless Eyes Trails",
true,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
if v.Name == "RedEyes" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Anchored = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "RedEyes" then
v:Destroy()
end
end
end
end
)

uiSecs.TCO:addButton(
"TCO Custom Theme",
function()
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.HealthLabel.TextColor3 =
Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:250"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:350"
game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 65
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
Color3.new(0, 0, 0)
local plr = game.Players.LocalPlayer
game.Workspace.Gravity = 70
plr.Character.Humanoid.JumpPower = "70"
game.Workspace.Gravity = 70
plr.Character.Humanoid.JumpPower = "70"
local billboard = plr.Character:WaitForChild("Head"):WaitForChild("HealthBar").Frame
billboard.Health.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
local kg = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
kg.Volume = 3
kg.SoundId = "rbxassetid://582476855"
kg.Looped = true
kg:Play()
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "ChangeSetting",
[3] = "DeathScene",
[4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
local UserInputService = game:GetService("UserInputService")

local character = game.Players.LocalPlayer.Character

local humanoid = character:WaitForChild("Humanoid")

local doubleJumpEnabled = false

humanoid.StateChanged:Connect(
function(oldState, newState)
if newState == Enum.HumanoidStateType.Jumping then
if not doubleJumpEnabled then
wait(.2)
if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
doubleJumpEnabled = true
end
end
elseif newState == Enum.HumanoidStateType.Landed then
doubleJumpEnabled = false
end
end
)

UserInputService.InputBegan:Connect(
function(inputObject)
if inputObject.KeyCode == Enum.KeyCode.Space then
if doubleJumpEnabled then
if humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
spawn(
function()
doubleJumpEnabled = false
end
)
end
end
end
end
)
end
)
end)

uiSecs.custom3:addButton(
"X-Gaster(Phase 2)",
function()
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light1.AnimationId =
"rbxassetid://5770352035"
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light2.AnimationId =
"rbxassetid://5770385566"
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light3.AnimationId =
"rbxassetid://5770410811"
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light4.AnimationId =
"rbxassetid://5770416576"
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light5.AnimationId =
"rbxassetid://5770437587"
game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.XCharaCombat.Light6:Destroy(

)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1.5
local deltadeath = game:GetService("ReplicatedStorage").Effects.Arena
local deltadeath2 = deltadeath:Clone()
deltadeath2.Parent = game:GetService("Workspace")
game:GetService("Players").LocalPlayer.PlayerGui.CharaIndicator:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()
game.Players.LocalPlayer.Character.CrossSansBlade:Destroy()
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND = "CantAttack"
CAS:BindActionAtPriority(
FREEZE_COMMAND,
function()
return Enum.ContextActionResult.Sink
end,
false,
Enum.ContextActionPriority.High.Value,
Enum.KeyCode.One,
Enum.KeyCode.Two,
Enum.KeyCode.Three,
Enum.KeyCode.Four,
Enum.KeyCode.Five
)

uiSecs.XG = uiPages.output1:addSection("X!Gaster Stuffs")
uiSecs.XG:addKeybind(
"Summon Knifes",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[ACT] = [SUMMON-KNIFES]",
[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "SummonKnives",
[3] = "Spawn"
}
)
wait(0.3)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "SummonKnivesChara",
[3] = "Spawn"
}
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Summon Bones",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[ACT] = [EXECUTE-CODE-1923]",
[4] = Color3.new(1, 0, 0)
}
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "LineBones"
}
)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "SummonBones",
[3] = "Spawn"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Summon XBlaster",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[ACT] = [Summon-XBlaster]",
[4] = Color3.new(1, 0, 0)
}
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "CrossBlaster"
}
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Overwrite heal",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[OVERWRITE] = [Regenerate-Wounds]",
[4] = Color3.new(1, 0, 0)
}
)
local A_1 = {
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Freeze Target",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[OVERWRITE] = [FREEZE-TARGET]",
[4] = Color3.new(1, 0, 0)
}
)
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.InverseEffect
local clone = script:Clone()
clone.Parent = char
for i = 1, 2, 1 do
wait(0 / 0)
local char = game.Players.LocalPlayer.Character
local script = game:GetService("ReplicatedStorage").Resources.LocalScripts.TimeStopEffect
local clone = script:Clone()
clone.Parent = char
end
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(
getrenv()._G.Pass,
game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
{
HitTime = 1,
Type = "Knockback",
HitEffect = "BiggerBurstEffect",
Sound = game:GetService("ReplicatedStorage").Sounds.TimeStop2,
CombatInv = true,
Damage = 0
}
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Teleport To Main Map",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[ACT] = [EXECUTE-CODE-NIL] = [Main-Map]",
[4] = Color3.new(1, 0, 0)
}
)
wait(3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(-182.598816, 119.763725, -346.678131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addKeybind(
"Teleport To A New Timeline",
nil,
function()
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "Summon"
}
)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(
{
[1] = getrenv()._G.Pass,
[2] = "Chatted",
[3] = "[ACT] = [EXECUTE-CODE-NULL] = [New-Timeline]",
[4] = Color3.new(1, 0, 0)
}
)
wait(3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(
130.038559,
1309.16516,
-252.660675,
-0.950366497,
0.0162060261,
-0.310709983,
-0.000773198903,
0.998516202,
0.0544456095,
0.311131388,
0.0519834161,
-0.948944032
)
game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(
{
[1] = getrenv()._G.Pass,
[2] = "Overwrite",
[3] = "UnSummon"
}
)
end
)

uiSecs.XG:addToggle(
"Purple Eyes Trail",
true,
function(state)
if state == true then
for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
if v.Name == "RedEyes" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Trail.Name = "Trail6"
sword2.Trail.Name = "Trail7"
sword2.Trail6.Color = ColorSequence.new(Color3.fromRGB(106, 13, 173))
sword2.Trail7.Color = ColorSequence.new(Color3.fromRGB(106, 13, 173))
sword2.Anchored = false
sword2.CanCollide = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "PurpleEyesTrail"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
end

if state == false then
for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "PurpleEyesTrail" then
v:Destroy()
end
end
end
end
)
for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
if v.Name == "RedEyes" then
local char = game.Players.LocalPlayer.Character
sword2 = v:Clone()
sword2.Parent = char
sword2.Trail.Name = "Trail6"
sword2.Trail.Name = "Trail7"
sword2.Trail6.Color = ColorSequence.new(Color3.fromRGB(106, 13, 173))
sword2.Trail7.Color = ColorSequence.new(Color3.fromRGB(106, 13, 173))
sword2.Anchored = false
sword2.CanCollide = false
weld = Instance.new("Weld", sword2)
weld.Part0 = sword2
weld.Part1 = char["Head"]
sword2.Name = "PurpleEyesTrail"
weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
sword2.Transparency = 1
end
end
uiSecs.XG:addButton(
"X-Gaster Custom Theme",
function()
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.Text = "XGaster"
local plr = game.Players.LocalPlayer
local billboard = plr.Character:WaitForChild("Head"):WaitForChild("HealthBar").Frame
billboard.Health.BackgroundColor3 = Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.TextColor3 =
Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.HealthLabel.TextColor3 =
Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:???"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:???"
game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 65
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(100, 13, 173)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 =
Color3.fromRGB(106, 13, 173)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
Color3.new(106, 13, 173)
game.Players.LocalPlayer:WaitForChild("DeathPlaylist"):ClearAllChildren()
local kg = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
kg.Volume = 5
kg.SoundId = "rbxassetid://4715178049"
kg.Looped = true
kg:Play()
end
)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.Text = "XGaster"
local plr = game.Players.LocalPlayer
local billboard = plr.Character:WaitForChild("Head"):WaitForChild("HealthBar").Frame
billboard.Health.BackgroundColor3 = Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.Character:WaitForChild("Head").HealthBar.Frame.HealthLabel.TextColor3 =
Color3.fromRGB(106, 13, 173)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:???"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:???"
game:GetService("Players").LocalPlayer.Backpack.Main.WalkSpeed.Value = 65
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(100, 13, 173)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(106, 13, 173)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 =
Color3.new(106, 13, 173)
game.Players.LocalPlayer:WaitForChild("DeathPlaylist"):ClearAllChildren()
local kg = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
kg.Volume = 5
kg.SoundId = "rbxassetid://4715178049"
kg.Looped = true
kg:Play()
end
)

uiSecs.Credit:addButton("Creator: Best Clown Ever#3733")
uiSecs.Credit:addButton("Script helpers 1: CATGOD#2293 | tobe#1261 | Lord.#0068")
uiSecs.Credit:addButton("Script helpers 2: Fatal Error Sans#3988 | [~ ˞Shifty ˞~ ]#1829")
uiSecs.Credit:addButton("Script helpers 3: add my steam account#1520 | King Dream#9746")
uiSecs.Credit:addButton("Script helpers 4: just a tree#0556 | Xewo#4055 | Rolex, Developer#6966")
uiSecs.Credit:addButton("Motivations: Cheese | Money | Tea")
uiSecs.Credit:addButton("Hacker: xrpl#2485")
uiSecs.Credit:addButton("DM Clown if bugs or errors")
local theme = venyx:addPage("Ui Changer", 5012544693)
local colors = theme:addSection("Color", 5012544693)
local section1 = theme:addSection("UI")
section1:addKeybind(
"Toggle Keybind",
Enum.KeyCode.RightControl,
function()
venyx:toggle()
end
)
for theme, color in pairs(themes) do
colors:addColorPicker(
theme,
color,
function(color3)
venyx:setTheme(theme, color3)
end
)
end

if getconnections then
 for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
   v:Disable()
end
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
   v:Disable()
end
else
venyx:Notify("Cheese Hub", "By the way, you exploit doesn't support getconnections")
end


--[[
noob = "ChristopherNewton45"
local noobpart2 = game.Workspace[noob]
for _,v in pairs(noobpart2:GetChildren()) do
if v.Name == 'BettySpear'then
v:Destroy()
end
end
for _,v in pairs(noobpart2:GetChildren()) do
if v.Name == 'BettyHeart'then
v:Destroy()
end
end
for _,v in pairs(noobpart2:GetChildren()) do
if v.Name == 'Removing'then
v:Destroy()
end
end
--]]