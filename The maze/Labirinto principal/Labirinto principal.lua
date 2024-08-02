local Tab1 = {
    tabname1 = "",
    section1 = "",
    button1 = ""
}

local Tab3 = {
    tabname3 = "",
    section3 = "",
    button3 = ""
}

local Tab4 = {
    tabname4 = "",
    section4 = "",
    button4 = "",
    section5 = "",
    button5 = ""
}

local Tab5 = {
    tabname5 = "",
    section5 = "",
    nameNotificacao5 = "",
    notificacao5 = ""
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local locale = player.LocaleId:lower()

if locale == "pt-br" then
    -- Primeira aba do script
    Tab1.tabname1 = "Auto ganhar"
    Tab1.section1 = "Ganhar a partida"
    Tab1.button1 = "Auto ganhar"
    
    -- Terceira aba do script
    Tab3.tabname3 = "Esp bixos"
    Tab3.section3 = "Mostrar onde está o bicho"
    Tab3.button3 = "Executar"
    
    -- Quarta aba do script
    Tab4.tabname4 = "Outros"
    Tab4.section4 = "Mostrar onde o jogador está"
    Tab4.button4 = "Esp player (não funciona corretamente)"
    Tab4.section5 = "Iluminar ao redor"
    Tab4.button5 = "FullBright"
    
    -- Quinta aba do script
    Tab5.tabname5 = "Créditos"
    Tab5.section5 = "Criador do script"
    Tab5.nameNotificacao5 = "Copiado"
    Tab5.notificacao5 = "O nick Laelmano24 foi copiado para a área de trabalho"
    
elseif locale == "en-us" then
    -- Primeira aba do script
    Tab1.tabname1 = "Auto win"
    Tab1.section1 = "Win the game"
    Tab1.button1 = "Auto win"
    
    -- Terceira aba do script
    Tab3.tabname3 = "Esp monsters"
    Tab3.section3 = "Show monster location"
    Tab3.button3 = "Execute"
    
    -- Quarta aba do script
    Tab4.tabname4 = "Others"
    Tab4.section4 = "Show player location"
    Tab4.button4 = "Esp player (does not work correctly)"
    Tab4.section5 = "Light up your surroundings"
    Tab4.button5 = "FullBright"
    
    -- Quinta aba do script
    Tab5.tabname5 = "Credit"
    Tab5.section5 = "Script creator"
    Tab5.nameNotificacao5 = "Copied"
    Tab5.notificacao5 = "The nickname Laelmano24 was copied to the desktop"
  
elseif locale:sub(1, 2) == "es" then
    -- Primeira aba do script
    Tab1.tabname1 = "Auto ganar"
    Tab1.section1 = "Gana el juego"
    Tab1.button1 = "Auto ganar"
    
    -- Terceira aba do script
    Tab3.tabname3 = "Esp monstruos"
    Tab3.section3 = "Mostrar ubicación de los monstruos"
    Tab3.button3 = "Ejecutar"

    -- Quarta aba do script
    Tab4.tabname4 = "Otros"
    Tab4.section4 = "Indicar la posición del jugador"
    Tab4.button4 = "Esp player (no funciona correctamente)"
    Tab4.section5 = "Iluminar a tu alrededor"
    Tab4.button5 = "FullBright"
    
    -- Quinta aba do script
    Tab5.tabname5 = "Crédito"
    Tab5.section5 = "Creador del script"
    Tab5.nameNotificacao5 = "Copiado"
    Tab5.notificacao5 = "El apodo Laelmano24 fue copiado al escritorio"

else
    -- Default (Inglês)
    Tab1.tabname1 = "Auto win"
    Tab1.section1 = "Win the game"
    Tab1.button1 = "Auto win"

    -- Terceira aba do script
    Tab3.tabname3 = "Esp monsters"
    Tab3.section3 = "Show monsters location"
    Tab3.button3 = "Execute"

    -- Quarta aba do script
    Tab4.tabname4 = "Others"
    Tab4.section4 = "Show player location"
    Tab4.button4 = "Execute (does not work correctly)"
    Tab4.section5 = "Light up your surroundings"
    Tab4.button5 = "Execute"
    
    -- Quinta aba do script
    Tab5.tabname5 = "Credit"
    Tab5.section5 = "Script creator"
    Tab5.nameNotificacao5 = "Copied"
    Tab5.notificacao5 = "The nickname Laelmano24 was copied to the desktop"
end

local mapId = game.PlaceId
local MapLocalId1 = 13289373717
local text = "test"

if mapId == MapLocalId1 then
    text = Tab1.section1
end

local katanaFolder = workspace.OfferingSystemUpdated.KatanaFolder
local estatua = workspace.OfferingSystemUpdated.Statue
local teleportInterval = 0.5

local function Autowin()
    for i = 1, 6 do
        local katana = katanaFolder:FindFirstChild("Katana" .. i)
        if katana then
            -- Teleportar o jogador para a katana
            player.Character.HumanoidRootPart.CFrame = katana.CFrame
            wait(teleportInterval)
            
            -- Ativar o ProximityPrompt
            local proximityPrompt = katana:FindFirstChild("ProximityPrompt")
            if proximityPrompt then
                fireproximityprompt(proximityPrompt)
            end
        end
    end
    
    wait(0.5)
    
    player.Character.HumanoidRootPart.CFrame = CFrame.new(estatua.Position)
    
    for i = 1, 7 do
        fireproximityprompt(estatua.ProximityPrompt)
        wait(0.5)
    end
    
    wait(0.5)
    
    player.Character.HumanoidRootPart.CFrame = CFrame.new(797.0152587890625, 77.29296112060547, -762.853515625)
end

local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local EspModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/createesp/No%20hitbox/script.txt"))()

local Window = OrionLib:MakeWindow({
    Name = "Rael Hub | Yokai maze Main maze",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local AutowinTab = Window:MakeTab({
    Name = Tab1.tabname1,
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Autowin_section1 = AutowinTab:AddSection({
    Name = text
})

if mapId == MapLocalId1 then
    Autowin_section1:AddButton({
        Name = Tab1.button1,
        Callback = function()
            Autowin()
        end
    })
end

local Esp_MonsterTab = Window:MakeTab({
    Name = Tab3.tabname3,
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Esp_Monster_section1 = Esp_MonsterTab:AddSection({
    Name = Tab3.section3
})

if mapId == MapLocalId1 then
    Esp_Monster_section1:AddButton({
        Name = Tab3.button3,
        Callback = function()
            local monsters = {
                ["Blue Demon"] = workspace.MonstersFolder["Blue Demon"],
                CryingGirl = workspace.MonstersFolder.CryingGirl,
                FlowerGirlV2 = workspace.MonstersFolder.FlowerGirlV2,
                HiachiCedrick = workspace.MonstersFolder.HiachiCedrick,
                LakeMonster = workspace.MonstersFolder.LakeMonster,
                WitchModel = workspace.MonstersFolder.WitchModel,
                YumaRemodel = workspace.MonstersFolder.YumaRemodel
            }
            
            for name, monster in pairs(monsters) do
                if monster then
                    EspModule.createESP(monster, name)
                end
            end
        end
    })
end

local Outros = Window:MakeTab({
    Name = Tab4.tabname4,
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Outros_section1 = Outros:AddSection({ Name = Tab4.section4 })
local Outros_section2 = Outros:AddSection({ Name = Tab4.section5 })

Outros_section1:AddButton({
    Name = Tab4.button4,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Raelhub/Rael-hub-function/main/function/esp%20player/function%20esp.txt"))()
    end
})

Outros_section2:AddButton({
    Name = Tab4.button5,
    Callback = function()
        local Light = game:GetService("Lighting")
        local function dofullbright()
            Light.Ambient = Color3.new(1, 1, 1)
            Light.ColorShift_Bottom = Color3.new(1, 1, 1)
            Light.ColorShift_Top = Color3.new(1, 1, 1)
        end
        dofullbright()
        Light.LightingChanged:Connect(dofullbright)
    end
})

local Credits = Window:MakeTab({
    Name = Tab5.tabname5,
    Icon = "rbxassetid://6034287594",
    PremiumOnly = false
})

local Credits_section1 = Credits:AddSection({ Name = Tab5.section5 })

Credits_section1:AddButton({
    Name = "Rael | Laelmano24",
    Callback = function()
        setclipboard("Laelmano24")
        OrionLib:MakeNotification({
            Name = Tab5.nameNotificacao5,
            Content = Tab5.notificacao5,
            Image = "rbxassetid://6034287594",
            Time = 5
        })
    end
})

OrionLib:Init()