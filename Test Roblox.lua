local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RetardWare", "Sentinel")



--tabs

--Main
  local Main = Window:NewTab("Main")
  local MainSection = Main:NewSection("Main")

  MainSection:NewToggle("ESP", "Basic ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNuggetEater05/ekaMiffutSmodnaR/main/GlobalR6SkeletonESP.lua"))()

shared.BoneESP_Settings = {
    Circle_Visible = false,
    Circle_Radius = 3,
    BoneESP_Color = Color3.fromRGB(255,255,255)
}
end)

MainSection:NewToggle("Super-Human", "Go fast, jump high", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120  --Come Back To fix {
    else 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50   --Come Back to Fix }
    end
end)

MainSection:NewButton("Infinite Yield", "Infinite Yield", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/Infiniteyield/master/source'),true))()
end)

--LOCAL PLAYER
local Player = Window:NewTab("player")
local PlayerSection = Player:NewSection("Player")
humanoid.UseJumpPower = true

PlayerSection:NewSlider("WalkSpeed", "Speed", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Jump", 500, 50, function(s) -- 500 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

--other
local other = Window:NewTab("Other")
local otherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "lets you chat for other people" , function()
 loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)
