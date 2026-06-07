local Jogador = game:GetService("Players").LocalPlayer
local GUI = Instance.new("ScreenGui")
GUI.Name = "LczinX_Hub"
GUI.Parent = Jogador:WaitForChild("PlayerGui")
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- CARREGA ARQUIVOS (CORRIGIDO)
local sucesso, Painel = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/lpaesladin-star/Script/main/Interface/painel.lua", true))()
end)
if not sucesso or not Painel then warn("❌ Erro ao carregar Painel") return end

local sucesso2, PegarMateriais = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/lpaesladin-star/Script/main/Fun%C3%A7%C3%B5es/pegar_materiais.lua", true))()
end)
if not sucesso2 or not PegarMateriais then warn("❌ Erro: pegar_materiais") return end

local sucesso3, Craftar = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/lpaesladin-star/Script/main/Fun%C3%A7%C3%B5es/craftar_itens.lua", true))()
end)
if not sucesso3 or not Craftar then warn("❌ Erro: craftar_itens") return end

local sucesso4, Leviathan = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/lpaesladin-star/Script/main/Fun%C3%A7%C3%B5es/ca%C3%A7ar_leviathan.lua", true))()
end)
if not sucesso4 or not Leviathan then warn("❌ Erro: caçar_leviathan") return end

-- CRIAR JANELA
local janela = Painel.Criar(GUI)

-- BOTÕES
Painel.AdicionarBotao(janela, "🔄 Pegar Materiais", function()
    PegarMateriais.Iniciar()
end)
Painel.AdicionarBotao(janela, "⚒️ Craftar Itens", function()
    Craftar.Tudo()
end)
Painel.AdicionarBotao(janela, "🐉 Caçar Leviathan", function()
    Leviathan.Iniciar()
end)

print("✅ LCZINX HUB CARREGADO COM SUCESSO!")
