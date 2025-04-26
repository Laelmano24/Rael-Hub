local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GameData = ReplicatedStorage.GameData
local FloorName = GameData.Floor.Value

loadstring(game:HttpGet("https://raw.githubusercontent.com/Laelmano24/Rael-Hub/refs/heads/main/DOORS/floors/Doors%20" .. FloorName.. ".txt"))()