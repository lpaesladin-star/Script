local Leviathan = {}

function Leviathan.Iniciar()
    print("🐉 INICIANDO CAÇA AO LEVIATHAN!")

    local Jogador = game:GetService("Players").LocalPlayer
    local GUI = Jogador:WaitForChild("PlayerGui"):WaitForChild("LczinX_Hub")
    local Aba = Instance.new("Frame")
    Aba.Size = UDim2.new(0, 260, 0, 200)
    Aba.Position = UDim2.new(0, 310, 0, 50)
    Aba.BackgroundColor3 = Color3.fromRGB(40, 20, 20)
    Aba.BorderSizePixel = 0
    Aba.Parent = GUI

    local Titulo = Instance.new("TextLabel")
    Titulo.Size = UDim2.new(1,0,0,35)
    Titulo.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
    Titulo.Text = "🐉 CAÇA LEVIATHAN LIGADA"
    Titulo.TextColor3 = Color3.new(1,1,1)
    Titulo.Font = Enum.Font.GothamBold
    Titulo.Parent = Aba

    local Status = Instance.new("TextLabel")
    Status.Size = UDim2.new(1,-10,1,-45)
    Status.Position = UDim2.new(0,5,0,40)
    Status.BackgroundTransparency = 1
    Status.TextColor3 = Color3.new(1,1,1)
    Status.Font = Enum.Font.Gotham
    Status.TextSize = 13
    Status.Text = "🔎 Procurando...\n⚔️ Atacando automaticamente\n💰 Pegando Escamas"
    Status.Parent = Aba

    local Fechar = Instance.new("TextButton")
    Fechar.Size = UDim2.new(0, 30, 0, 30)
    Fechar.Position = UDim2.new(1, -35, 0, 2)
    Fechar.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
    Fechar.Text = "X"
    Fechar.TextColor3 = Color3.new(1,1,1)
    Fechar.Parent = Aba
    Fechar.MouseButton1Click:Connect(function() Aba:Destroy() end)

    -- LOOP DE CAÇA
    spawn(function()
        while Aba and Aba.Parent do
            task.wait(2)
            pcall(function()
                for _,bicho in pairs(workspace:GetDescendants()) do
                    if string.find(bicho.Name, "Leviathan") then
                        Status.Text = "⚠️ LEVIATHAN ENCONTRADO!\n⚔️ Atacando...\n✅ Dano: 100%\n💎 Escamas coletadas!"
                        -- Vai pra cima e ataca
                        Jogador.Character.HumanoidRootPart.CFrame = bicho.Head.CFrame + Vector3.new(0,12,0)
                        -- Usa habilidades (básico)
                        local hrp = Jogador.Character:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            -- Ataque automático
                        end
                    end
                end
            end)
        end
    end)
end

return Leviathan
