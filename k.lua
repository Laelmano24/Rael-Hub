-- Certifique-se de que a biblioteca Orion está instalada e disponível no seu projeto

-- Importando a biblioteca Orion
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criando a janela principal
local Window = OrionLib:MakeWindow({Name = "Script de Crédito", HidePremium = false, SaveConfig = true, ConfigFolder = "Config"})

-- Adicionando uma aba
local creditos = Window:MakeTab({
    Name = "Creditis",
    Icon = "rbxassetid://6034287594", -- ícone de pessoa
    PremiumOnly = false
})

-- Adicionando uma seção na aba
creditos_section1:AddSection({
    Name = "Criador do Script e head programmer"
})

creditos_section2:AddSection({
    Name = "Test e developer"
})


creditos_section1:AddButton({
    Name = "Rael | Laelmano24",
    Icon = "rbxassetid://6034287594", -- ícone de pessoa
    Callback = function()
        setclipboard("Laelmano24")
        
        OrionLib:MakeNotification({
            Name = "Copiado!",
            Content = "Nick do criador foi copiado na área de transferência.",
            Image = "rbxassetid://6034287594", -- 
            Time = 5
        })
    end
})

creditos_section2:AddButton({
    Name = "David | DDGM_oficial",
    Icon = "rbxassetid://6034287594", -- ícone de pessoa
    Callback = function()
        setclipboard("david2828berg")
        
        OrionLib:MakeNotification({
            Name = "Copiado!",
            Content = "Nick do test foi copiado na área de transferência.",
            Image = "rbxassetid://6034287594", -- 
            Time = 5
        })
    end
})

-- Finalizando a interface
OrionLib:Init()