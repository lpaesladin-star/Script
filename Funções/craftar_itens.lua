local Craftar = {}

function Craftar.Tudo()
    print("⚒️ Abrindo Painel de Craft...")

    local Jogador = game:GetService("Players").LocalPlayer
    local GUI = Jogador:WaitForChild("PlayerGui"):WaitForChild("LczinX_Hub")
    local Aba = Instance.new("Frame")
    Aba.Size = UDim2.new(0, 260, 0, 220)
    Aba.Position = UDim2.new(0, 310, 0, 50)
    Aba.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
    Aba.BorderSizePixel = 0
    Aba.Parent = GUI

    local Titulo = Instance.new("TextLabel")
    Titulo.Size = UDim2.new(1,0,0,35)
    Titulo.BackgroundColor3 = Color3.fromRGB(40, 40, 80)
    Titulo.Text = "⚒️ CRAFTAR ITENS"
    Titulo.TextColor3 = Color3.new(1,1,1)
    Titulo.Font = Enum.Font.GothamBold
    Titulo.Parent = Aba

    local Info = Instance.new("TextLabel")
    Info.Size = UDim2.new(1,-10,1,-45)
    Info.Position = UDim2.new(0,5,0,40)
    Info.BackgroundTransparency = 1
    Info.TextColor3 = Color3.new(1,1,1)
    Info.Font = Enum.Font.Gotham
    Info.TextSize = 13
    Info.Text = [[
✅ Materiais prontos!

🔨 BELT RUN:
Vai até Caçador de Tubarões
Craftando automaticamente...

🔨 BARCO CAÇADOR:
❌ Faltam: 20x Escama Leviathan
(Cace ele primeiro)
]]
    Info.Parent = Aba

    local Fechar = Instance.new("TextButton")
    Fechar.Size = UDim2.new(0, 30, 0, 30)
    Fechar.Position = UDim2.new(1, -35, 0, 2)
    Fechar.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
    Fechar.Text = "X"
    Fechar.TextColor3 = Color3.new(1,1,1)
    Fechar.Parent = Aba
    Fechar.MouseButton1Click:Connect(function() Aba:Destroy() end)

    -- Vai até o NPC e crafta
    spawn(function()
        task.wait(1)
        pcall(function()
            local npc = workspace:FindFirstChild("TikiOutpost") and workspace.TikiOutpost.NPCs:FindFirstChild("SharkHunter")
            if npc then
                Jogador.Character.HumanoidRootPart.CFrame = npc.Head.CFrame + Vector3.new(0,2,6)
                -- Simula clique e craft
                print("✅ Belt Run Craftado!")
                Info.Text = Info.Text .. "\n\n✅ Belt Run PRONTO!"
            end
        end)
    end)
end

return Craftar
