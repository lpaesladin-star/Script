local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local GUI = Instance.new("ScreenGui")
GUI.Name = "LczinX_Hub"
GUI.Parent = Player:WaitForChild("PlayerGui")
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Importa tudo
local Painel = require(script.Parent.Interface.painel)
local Materiais = require(script.Parent.Funções.pegar_materiais)
local Craft = require(script.Parent.Funções.craftar_itens)
local Leviathan = require(script.Parent.Funções.caçar_leviathan)

-- Cria painel
local janela = Painel.Criar(GUI)

-- Botões EXATOS que você quer
Painel.AdicionarBotao(janela, "🔄 Pegar Materiais", function()
    Materiais.Iniciar()
end)

Painel.AdicionarBotao(janela, "⚒️ Craftar Itens (Belt Run / Barco)", function()
    Craft.Tudo()
end)

Painel.AdicionarBotao(janela, "🐉 Caçar Leviathan Automático", function()
    Leviathan.Iniciar()
end)

print("✅ LczinX Hub CARREGADO!")
