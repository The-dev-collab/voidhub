---@diagnostic disable: redefined-local

repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "[🌲JUNGLE!] Rebirth Champions X | void hub V1",
    LoadingTitle = "ty for using void hub V1",
    LoadingSubtitle = "by abcconfirm#0426",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = voidhub, -- Create a custom folder for your hub/game
       FileName = "voidhub"
    },
    Discord = {
       Enabled = true,
       Invite = "xrTThSrYJe", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "void hub",
       Subtitle = "Key System",
       Note = "Join the discord (https://discord.gg/xrTThSrYJe)",
       FileName = "voidhubkey",
       SaveKey = false,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "K2YGtQ5t"
    }
})

local rebirthcounter = game:GetService("Players").LocalPlayer.Upgrades.RebirthButtons
local Eggs = game:GetService("Workspace").Scripts.Eggs:GetChildren()
local EggsTable = {}
local Worlds = game:GetService("Workspace").Scripts.Portals:GetChildren()
local WorldsTable = {}
local part = game:GetService("Workspace").Scripts.Portals["Fantasy Jungle"].Touch
local part1 = game:GetService("Workspace").Scripts.Portals.ToFantasy["Fantasy Spawn"].Touch
local game = workspace.Parent



local teleport_table = {
    ["Space 1"] = Vector3.new(-762.397827, 31.5432625, -765.320557, -0.102578402, 0, 0.994724929, 0, 1, 0, -0.994724929, 0, -0.102578402),
    ["Space 2"] = Vector3.new(-1302.09045, 47.4877625, -802.826965, 0.736216068, -0.116217852, -0.666692793, -3.10949981e-05, 0.985138178, -0.171763554, 0.676746547, 0.126475826, 0.725270987), 
    ["Space 3"] = Vector3.new(-225.764008, -55.318428, -272.065735, 1, 0, 0, 0, 1, 0, 0, 0, 1), 
    ["Space 4"] = Vector3.new(345.34549, 88.8793182, -2035.30505, 0.992760003, 0, 0.120114915, 0, 1, 0, -0.120114915, 0, 0.992760003), 
    ["Space 5"] = Vector3.new(1006.80939, 42.1533356, -976.421448, 0.970416248, -0.190671742, 0.148109972, 0.206716657, 0.973104477, -0.101665571, -0.124741733, 0.129274726, 0.983731449),
    ["Space 6"] = Vector3.new(936.880432, 8.37944508, -309.128845, -0.46241951, 0, -0.886661649, 0, 1, 0, 0.886661649, 0, -0.46241951), 
    ["Space 7"] = Vector3.new(-1625.1731, 26.2980518, 3.35553956, 0.99044168, -0.039517045, -0.132150173, -0.051546149, 0.782623172, -0.62035805, 0.127938509, 0.621240318, 0.773105621), 
    ["Space 8"] = Vector3.new(-1430.72058, 26.0657883, 685.603577, 0.657350361, 0, 0.7535851, 0, 1, 0, -0.7535851, 0, 0.657350361), 
    ["Forest 1"] = Vector3.new(-391.252777, 28.3445282, 212.554214, 0.88286835, -0, -0.469620556, 0, 1, -0, 0.469620556, 0, 0.88286835), 
    ["Forest 2"] = Vector3.new(-440.659485, 28.2514687, 205.422882, 0.88286835, -0, -0.469620556, 0, 1, -0, 0.469620556, 0, 0.88286835), 
    ["Forest 3"] = Vector3.new(242.741348, 2.17562127, 58.8823929, 0.991949022, 0.126637697, 0, -0.126637697, 0.991949022, -0, -0, 0, 1), 
    ["Forest 4"] = Vector3.new(-478.196289, 28.3990536, 187.002655, 0.88286835, -0, -0.469620556, 0, 1, -0, 0.469620556, 0, 0.88286835), 
    ["Forest 5"] = Vector3.new(371.173706, 2.81269908, 19.6198158, 1, 0, 0, 0, 0.991583526, -0.129468739, 0, 0.129468739, 0.991583526), 
    ["Forest 6"] = Vector3.new(-392.538239, 28.2353687, 139.381882, 0.88286835, -0, -0.469620556, 0, 1, -0, 0.469620556, 0, 0.88286835), 
    ["Forest 7"] = Vector3.new(344.245544, -56.0746269, 115.657967, 1, 0, 0, 0, 1, 0, 0, 0, 1), 
    ["Forest 8"] = Vector3.new(162.976959, 2.7437408, 127.227089, 1, 0, 0, 0, 0.999829352, -0.0184721258, 0, 0.0184721258, 0.999829352), 
    ["Aqua 1"] = Vector3.new(-2013.34033, 1.35568738, -222.047729, -0.105120659, 0, 0.99445945, 0, 1, 0, -0.99445945, 0, -0.105120659), 
    ["Aqua 2"] = Vector3.new(-2185.05762, 0.960364819, -262.748047, 0.0110782385, -0, -0.999938607, 0, 1, -0, 0.999938607, 0, 0.0110782385), 
    ["Aqua 3"] = Vector3.new(-2122.02319, 21.9852104, -426.049713, 1, 0, 0, 0, 1, 0, 0, 0, 1), 
    ["Aqua 4"] = Vector3.new(-2101.59619, 1.38028514, -432.771637, -0.512824416, 0, 0.858493507, 0, 1, 0, -0.858493507, 0, -0.512824416), 
    ["Aqua 5"] = Vector3.new(-1683.50024, 49.6293945, -427.703003, -0.0599890947, 0, -0.998198986, 0, 1, 0, 0.998198986, 0, -0.0599890947), 
    ["Aqua 6"] = Vector3.new(-1995.25452, 1.3802948, -444.362549, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
    ["Aqua 7"] = Vector3.new(-1717.22449, 86.3698349, -374.440338, 0.673291206, 0.248434365, 0.696390271, -0.262708187, 0.960783958, -0.0887615085, -0.691131949, -0.123185068, 0.712153077), 
    ["Aqua 8"] = Vector3.new(-2111.67676, 30.7223511, -183.144043, -0.771637321, 0, -0.636063278, 0, 1, 0, 0.636063278, 0, -0.771637321), 
    ["Fantasy 1"] = Vector3.new(-172.210754, 2.28321171, -2629.93042, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685), 
    ["Fantasy 2"] = Vector3.new(-491.130615, 27.7817059, 959.478455, -0.92445302, 0, 0.381295919, 0, 1, 0, -0.381295919, 0, -0.92445302), 
    ["Fantasy 3"] = Vector3.new(-494.479675, 7.9668293, -2983.57007, -0.971516013, 0, -0.236974627, 0, 1, 0, 0.236974627, 0, -0.971516013), 
    ["Fantasy 4"] = Vector3.new(532.763611, 46.2211113, -766.325806, 0.445732832, -0, -0.895166039, 0, 1, -0, 0.895166039, 0, 0.445732832), 
    ["Fantasy 5"] = Vector3.new(-581.129639, 26.3182487, -1293.09326, 0.063772738, -0, -0.997964442, 0, 1, -0, 0.997964442, 0, 0.063772738), 
    ["Fantasy 6"] = Vector3.new(30.2981339, 8.49104214, 723.777649, -0.275168657, 0, 0.961396039, 0, 1, 0, -0.961396039, 0, -0.275168657), 
    ["Fantasy 7"] = Vector3.new(181.710419, 4.28282356, -33.563118, -0.297342062, 0, -0.954770982, 0, 1, 0, 0.954770982, 0, -0.297342062), 
    ["Fantasy 8"] = Vector3.new(-1421.95215, -11.7463284, -1639.92017, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}

local world_table = {
    ["Alien"] = Vector3.new(321.010468, 92.3529892, -1828.87842, 0.120070398, -0, -0.992765486, 0, 1, -0, 0.992765486, 0, 0.120070398), --1 amulet Alien
    ["Neon"] = Vector3.new(259.158905, 92.1828384, -1840.22522, -0.992760301, 0, -0.120114915, 0, 1, 0, 0.120114915, 0, -0.992760301), --2 Amulet Neon
    ["Hacker"] = Vector3.new(310.55484, 92.3692245, -1905.04602, -0.120070696, 0, 0.992765486, 0, 1, 0, -0.992765486, 0, -0.120070696), --3 amulet hacker
    ["Space"] = Vector3.new(345.34549, 88.8793182, -2035.30505, 0.992760003, 0, 0.120114915, 0, 1, 0, -0.120114915, 0, 0.992760003), -- 4/5/6 amulet Space
    ["Saturn"] = Vector3.new(295.705017, 92.1641159, -1903.4071, -0.120070696, 0, 0.992765486, 0, 1, 0, -0.992765486, 0, -0.120070696), --7 amulet Saturn
    ["Black Hole"] = Vector3.new(325.341431, 92.3692245, -1906.83484, -0.120070696, 0, 0.992765486, 0, 1, 0, -0.992765486, 0, -0.120070696), --8 Amulet Black hole+
    --SPACE
    --FOREST/FANTASY
    ["Spawn"] = Vector3.new(-369.610535, 32.5903168, 175.052399, 1, 0, 0, 0, 1, 0, 0, 0, 1), --3/5/7/8 Amulet Spawn / FANTASY 7
    ["Forest"] = Vector3.new(106.599884, 7.11335945, 91.5918427, 0.853996992, -0, -0.520277977, 0, 1, -0, 0.520277977, 0, 0.853996992), --1/2/4/6 Amulet Spawn
    --FOREST
    --AQUA
    ["Aqua"] = Vector3.new(-1643.20239, 58.1822128, -391.266968, 0.988353968, -0, -0.152172327, 0, 1, -0, 0.152172327, 0, 0.988353968), --1/2/3/4/6/8
    ["Axolotls"] = Vector3.new(-2084.35693, 9.15890312, -364.276886, -0.835585356, 0, -0.549361348, 0, 1, 0, 0.549361348, 0, -0.835585356), --5/7
    --AQUA
    --FANTASY
    ["Fantasy Spawn"] = Vector3.new(-423.293396, 14.74617, -3012.55029, 0, 0, 1, 0, 1, -0, -1, 0, 0), --1
    ["Fantasy Jungle"] = Vector3.new(-140.255859, 9.12885952, -2580.69141, 1, 0, 0, 0, 1, 0, 0, 0, 1), --3
    ["Hell"] = Vector3.new(95.6339874, 6.99602604, 39.5522919, 0.563414693, 0, 0.826174319, 0, 1, 0, -0.826174319, 0, 0.563414693), --4
    ["Pirate"] = Vector3.new(-1996.09485, 10.0537148, -409.262177, 0.858072996, 0, 0.513527691, 0, 1, 0, -0.513527691, 0, 0.858072996), --8
    ["Atlantis"] = Vector3.new(88.3147964, 6.99603081, 107.486847, 0.403891265, -0, -0.914807022, 0, 1, -0, 0.914807022, 0, 0.403891265), --6
    ["Space Fantasy"] = Vector3.new(274.914154, 92.3519974, -1823.82178, 0.120070398, -0, -0.992765486, 0, 1, -0, 0.992765486, 0, 0.120070398), --5
    ["Fishing Village"] = Vector3.new(-2001.85913, 9.50050926, -363.372559, 0.782472789, -0, -0.622684836, 0, 1, -0, 0.622684836, 0, 0.782472789), --2
}



local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(0.5,Enum.EasingStyle.Linear)
local lp = game.Players.LocalPlayer
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

for i,v in pairs(Eggs) do
    table.insert(EggsTable, v.Name)
end


getgenv().autoclick = false
getgenv().autoHatch1 = false
getgenv().autoHatch3 = false
getgenv().selectEgg = "Basic"
getgenv().autorebirth = false
getgenv().autorebirthselect = 1
getgenv().autorebirthbest = rebirthcounter.Value
getgenv().autocraft = false
getgenv().autospinwhell = false
getgenv().noclip = false
getgenv().disableteleporter = false
getgenv().enableteleporter = false
getgenv().whitescreen = false
getgenv().autocupcake = false
getgenv().EventUpgrader = false






function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:Wait()
        print('Teleporting Done!')
    end
end

function disableteleporter()
    for i, v in next, getconnections(part.Touched) do
        v:Disable()
    end

    for i, v in next, getconnections(part1.Touched) do
        v:Disable()
    end
end

function enableteleporter()
    for i, v in next, getconnections(part.Touched) do
        v:Enable()
    end
    
    for i, v in next, getconnections(part1.Touched) do
        v:Enable()
    end
end


function autoclick()
    while getgenv().autoclick == true do
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        game:GetService("ReplicatedStorage").Events.Click3:FireServer(true)
        task.wait(.00000000000001)
    end
end



function autoHatch1()
    while getgenv().autoHatch1 == true do
        game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().selectEgg,"Single")
        task.wait(.00000000000000000000000000001)
    end
end

function autoHatch3()
    while getgenv().autoHatch3 == true do
        game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().selectEgg,"Triple")
        task.wait(0.5)
    end
end

function autorebirth()
    while getgenv().autorebirth == true do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().autorebirthselect)
        task.wait(.0000000000000000000000001)
    end
end

function autorebirthbest()
    while getgenv().autorebirthbest == true do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(rebirthcounter.Value)
        task.wait(.0000000000000000000001)
    end
end

function autocraft()
    while getgenv().autocraft == true do
        game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
        task.wait(.00000000000000000001)
    end
end

function autospinwhell()
    while getgenv().autospinwhell == true do
        game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
        task.wait(.0000000000000000000001)
    end
end

game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(1)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(2)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(3)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(4)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(5)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(6)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(7)

       
-- tabs

local eventTab = Window:CreateTab("100M", 4483362458) -- Title, Image

local AutoFarmTab = Window:CreateTab("AutoFarm", 4483362458) -- Title, Image

--local upgradesTab = Window:CreateTab("Upgrades", 4483362458) -- Title, Image

local EggsTab = Window:CreateTab("Eggs", 4483362458) -- Title, Image

local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

local MiscTab = Window:CreateTab("Misc", 4483362458) -- Title, Image

local AmuletsTab = Window:CreateTab("Amulets TP", 4483362458) -- Title, Image

local changelogTab = Window:CreateTab("Changelog", 12644644711) -- Title, Image



-- toggels

local Toggle = AutoFarmTab:CreateToggle({
    Name = "Auto Click",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autoclick = Value
        autoclick()
    end,
})

local Toggle = eventTab:CreateToggle({
    Name = "Auto Cupcake",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().CollectCupcakes = Value
        while getgenv().CollectCupcakes do
        wait()
        for i,v in pairs(game:GetService("Workspace").Scripts.CollectCupcakes.Storage:GetDescendants()) do
          if (v.Name == "TouchInterest" and v.Parent) then
          firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
          task.wait()
          break;
          end
        end
        end
    end,
})

local Toggle = MiscTab:CreateToggle({
    Name = "CPU SAVER (LIMIT 10FPS)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().Toggle = Value
        while getgenv().Toggle == true do task.wait()
                if getgenv().Toggle == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
            setfpscap(10)
          else 
            game:GetService("RunService"):Set3dRenderingEnabled(true)
            setfpscap(360)
          end
        end  
    end,
})

local Toggle = AutoFarmTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autorebirth = Value
        autorebirth() 
    end,
})

local Toggle = AutoFarmTab:CreateToggle({
    Name = "Auto Rebirth (Best Rebirth)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autorebirthbest = Value
        autorebirthbest() 
    end,
})

local Toggle = AutoFarmTab:CreateToggle({
    Name = "Auto Spin Whell",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autospinwhell = Value
        autospinwhell() 
    end,
})

local Label = AutoFarmTab:CreateLabel("Current Best Rebirth: "..rebirthcounter.Value)



local Toggle = EggsTab:CreateToggle({
    Name = "Auto Hatch (Single)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autoHatch1 = Value
        autoHatch1() 
    end,
})

local Toggle = EggsTab:CreateToggle({
    Name = "Auto Hatch (Triple)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autoHatch3 = Value
        autoHatch3() 
    end,
})

local Toggle = EggsTab:CreateToggle({
    Name = "Auto Craft",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autocraft = Value
        autocraft() 
    end,
})

local Dropdown = EggsTab:CreateDropdown({
    Name = "Select Eggs",
    Options = EggsTable,
    CurrentOption = "Basic",
    Flag = "Dropdown1",
    Callback = function(Option)
        getgenv().selectEgg = Option
    end,
})

local Button = AutoFarmTab:CreateButton({
    Name = "Auto collect chest",
    Callback = function()
        game:GetService("Players").LocalPlayer.Passes.AutoChestCollect.Value = true
        wait(10)
        game:GetService("Players").LocalPlayer.Passes.AutoChestCollect.Value = false
    end,
})



local Label = MiscTab:CreateLabel("credits to v3rm for server hops")


local Button = MiscTab:CreateButton({
    Name = "Hop to low Player Server",
    Callback = function()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File = pcall(function()
          AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
        end)
        if not File then
          table.insert(AllIDs, actualHour)
          writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
        end
        function TPReturner()
          local Site;
          if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
          else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
          end
          local ID = ""
          if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
          end
          local num = 0;
          for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
              for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                  if ID == tostring(Existing) then
                    Possible = false
                  end
                else
                  if tonumber(actualHour) ~= tonumber(Existing) then
                    local delFile = pcall(function()
                      delfile("NotSameServers.json")
                      AllIDs = {}
                      table.insert(AllIDs, actualHour)
                    end)
                  end
                end
                num = num + 1
              end
              if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                  writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                  wait()
                  game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(8)
              end
            end
          end
        end
        
        function Teleport()
          while wait() do
            pcall(function()
              TPReturner()
              if foundAnything ~= "" then
                TPReturner()
              end
            end)
          end
        end
        Teleport()
    end,
})

local Button = MiscTab:CreateButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
    end,
})

local Button = MiscTab:CreateButton({
    Name = "Get a few Gamepasses (Autoclicker/Auto rebirth)",
    Callback = function()
        game:GetService("Players").LocalPlayer.Passes.AutoClicker.Value = true
        game:GetService("Players").LocalPlayer.Passes.AutoRebirth.Value = true
        game:GetService("Players").LocalPlayer.SpaceUpgrades.Teleport.Value = 1
        game:GetService("Players").LocalPlayer.Upgrades.FreeAutoClicker.Value = 1
        game:GetService("Players").LocalPlayer.Upgrades.FasterFreeAutoClicker.Value = 6    
    end,
})

local Button = MiscTab:CreateButton({
    Name = "Unlock All worlds",
    Callback = function()
        for i, v in pairs(game:GetDescendants()) do
            if v.Name =="Unlocked" then
               v.Value = "true"
            end
          end
          
            for i, v in pairs(game:GetDescendants(game:GetService("Workspace").Scripts.Portals)) do
            if v.Name =="LabelUI" then
               v:Destroy()
            end
          end
        
    end,
})


-- dropdowns



local Dropdown = AutoFarmTab:CreateDropdown({
    Name = "Select Rebirth",
    Options = {1,2,3,4,5,6,7,8,9,10,
    11,12,13,14,15,16,17,18,19,20,
    21,22,23,24,25,26,27,28,29,30,
    31,32,33,34,35,36,37,38,39,40,
    41,42,43,44,45,46,47,48,49,50,
    51,52,53,54,55,56,57,58,59,60,
    61,62,63,64,65,66,67,68,69,70,
    71,72,73,74,75,76,77,78,79,80,
    81,82,83,84,85,86,87,88,89,90,
    91,92,93,94,95,96,97,98,99,100},
    CurrentOption = "none",
    Flag = "Dropdown1",
    Callback = function(Option)
        getgenv().autorebirthselect = Option
        print(getgenv().autorebirthselect)  
    end,
})





local Slider = PlayerTab:CreateSlider({
    Name = "FOV",
    Range = {0, 120},
    Increment = 1,
    Suffix = "Field of vied",
    CurrentValue = 90,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService'Workspace'.Camera.FieldOfView = Value
    end,
})
 

-- misc

local Label = MiscTab:CreateLabel("Anti Afk is enabled")

-- local player

local Slider = PlayerTab:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 1000},
    Increment = 10,
    Suffix = "Walkspeed",
    CurrentValue = 52,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(speed)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end,
})

--buttons for amulets

local Label = AmuletsTab:CreateLabel("Pretty buggy but better then nothing.")
local Label = AmuletsTab:CreateLabel("If you fall down or dont get to the amulet press again")



local Label = AmuletsTab:CreateLabel("TELEPORT FOR SPACE")

--SPACE

local Button = AmuletsTab:CreateButton({
    Name = "Space 1",
    Callback = function()
        bypass_teleport(world_table["Alien"])
        wait(1)
        bypass_teleport(teleport_table["Space 1"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 2",
    Callback = function()
        bypass_teleport(world_table["Neon"])
        wait(1)
        bypass_teleport(teleport_table["Space 2"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 3",
    Callback = function()
        bypass_teleport(world_table["Hacker"])
        wait(1)
        bypass_teleport(teleport_table["Space 3"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 4",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Space 4"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 5",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Space 5"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 6",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Space 6"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 7",
    Callback = function()
        bypass_teleport(world_table["Saturn"])
        wait(1)
        bypass_teleport(teleport_table["Space 7"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Space 8",
    Callback = function()
        bypass_teleport(world_table["Black Hole"])
        wait(1)
        bypass_teleport(teleport_table["Space 8"])
    end,
})

--SPACE

local Label = AmuletsTab:CreateLabel("TELEPORT FOR FOREST")

--FOREST

local Button = AmuletsTab:CreateButton({
    Name = "Forest 1",
    Callback = function()
        bypass_teleport(world_table["Forest"])
        wait(1)
        bypass_teleport(teleport_table["Forest 1"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 2",
    Callback = function()
        bypass_teleport(world_table["Forest"])
        wait(1)
        bypass_teleport(teleport_table["Forest 2"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 3",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Forest 3"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 4",
    Callback = function()
        bypass_teleport(world_table["Forest"])
        wait(1)
        bypass_teleport(teleport_table["Forest 4"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 5",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Forest 5"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 6",
    Callback = function()
        bypass_teleport(world_table["Forest"])
        wait(1)
        bypass_teleport(teleport_table["Forest 6"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 7",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Forest 7"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Forest 8",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Forest 8"])
    end,
})

--FOREST

local Label = AmuletsTab:CreateLabel("TELEPORT FOR AQUA")

--AQUA

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 1",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 1"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 2",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 2"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 3",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 3"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 4",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 4"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 5",
    Callback = function()
        bypass_teleport(world_table["Axolotls"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 5"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 6",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 6"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 7",
    Callback = function()
        bypass_teleport(world_table["Axolotls"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 7"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Aqua 8",
    Callback = function()
        bypass_teleport(world_table["Aqua"])
        wait(1)
        bypass_teleport(teleport_table["Aqua 8"])
    end,
})

--AQUA

local Label = AmuletsTab:CreateLabel("TELEPORT FOR FANTASY")

--FANTASY

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 1",
    Callback = function()
        for i, v in next, getconnections(part.Touched) do
            v:Disable()
        end
        for i, v in next, getconnections(part1.Touched) do
            v:Disable()
        end
        bypass_teleport(world_table["Fantasy Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 1"])
        for i, v in next, getconnections(part.Touched) do
            v:Enable()
        end
        for i, v in next, getconnections(part1.Touched) do
            v:Enable()
        end
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 2",
    Callback = function()
        bypass_teleport(world_table["Fishing Village"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 2"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 3",
    Callback = function()
        bypass_teleport(world_table["Fantasy Jungle"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 3"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 4",
    Callback = function()
        bypass_teleport(world_table["Hell"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 4"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 5",
    Callback = function()
        bypass_teleport(world_table["Space Fantasy"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 5"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 6",
    Callback = function()
        bypass_teleport(world_table["Atlantis"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 6"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 7",
    Callback = function()
        bypass_teleport(world_table["Spawn"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 7"])
    end,
})

local Button = AmuletsTab:CreateButton({
    Name = "Fantasy 8",
    Callback = function()
        bypass_teleport(world_table["Pirate"])
        wait(1)
        bypass_teleport(teleport_table["Fantasy 8"])
    end,
})

-- anti afk

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end

local Paragraph = changelogTab:CreateParagraph({Title = "CHANGELOG", Content = "LAST UPDATE:03.03.2023"})

local Label = changelogTab:CreateLabel("Going Open Source (03.03.2023)")

local Label = changelogTab:CreateLabel("Fix Crashing if Open Triple Eggs (03.03.2023)")

local Label = changelogTab:CreateLabel("Performance Buffs (02.28.2023)")

local Label = changelogTab:CreateLabel("Release V1 (02.27.2023)")




Rayfield:Notify({
   Title = "voidhub",
   Content = "voidhub fully loaded game:[🌲JUNGLE!] Rebirth Champions X",
   Duration = 5,
   Image = 5,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
      end
   },
},
})
