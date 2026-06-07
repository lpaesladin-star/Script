local PegarMateriais = {}
 function PegarMateriais.Iniciar()
     print("🔄 Abrindo Painel de Materiais...")
     -- Cria aba de informações
     local Jogador = game:GetService("Players").LocalPlayer
     local GUI = Jogador:WaitForChild("PlayerGui"):WaitForChild("LczinX_Hub")
     local Aba = Instance.new("Frame")
     Aba.Size = UDim2.new(0, 260, 0, 300)
     Aba.Position = UDim2.new(0, 310, 0, 50)
     Aba.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
     Aba.BorderSizePixel = 0
     Aba.Parent = GUI
     -- Título
     local Titulo = Instance.new("TextLabel")
     Titulo.Size = UDim2.new(1,0,0,35)
     Titulo.BackgroundColor3 = Color3.fromRGB(40, 40, 80)
     Titulo.Text = "📦 MATERIAIS NECESSÁRIOS"
     Titulo.TextColor3 = Color3.new(1,1,1)
     Titulo.Font = Enum.Font.GothamBold
     Titulo.Parent = Aba
     -- Lista de materiais
     local Texto = Instance.new("TextLabel")
     Texto.Size = UDim2.new(1,-10,1,-45)
     Texto.Position = UDim2.new(0,5,0,40)
     Texto.BackgroundTransparency = 1
     Texto.TextColor3 = Color3.new(1,1,1)
     Texto.Font = Enum.Font.Gotham
     Texto.TextSize = 13
     Texto.TextWrapped = true
     Texto.Text = [[
 🛠️ PARA CRAFTAR BELT RUN:
 🪵 Madeira: 20/20 | Ilha Floresta / Céu
 ⛓️ Ferro: 15/15 | Cidade da Fonte (2º Mar)
 ⚡ Fragmento de Raio: 5/5 | Ilha do Trovão
 🌿 Planta de Velocidade: 1/1 | Ilha Tiki
 💰 Berries: 50.000 | ✅
 🔷 Fragmentos: 2.000 | ✅
 🐉 PARA BARCO CAÇADOR:
 ⚠️ Precisa de: 20x Escama Leviathan
 📍 Onde: Mar Nível 6
 ]]
     Texto.Parent = Aba
     -- Botão para fechar
     local Fechar = Instance.new("TextButton")
     Fechar.Size = UDim2.new(0, 30, 0, 30)
     Fechar.Position = UDim2.new(1, -35, 0, 2)
     Fechar.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
     Fechar.Text = "X"
     Fechar.TextColor3 = Color3.new(1,1,1)
     Fechar.Parent = Aba
     Fechar.MouseButton1Click:Connect(function() Aba:Destroy() end)
     -- INICIA FARM AUTOMÁTICO
     spawn(function()
         while Aba and Aba.Parent do
             task.wait(1.5)
             -- Pegar Madeira
             pcall(function()
                 for _,v in pairs(workspace:GetDescendants()) do
                     if v:IsA("Part") and v.Name:lower():find("tree") then
                         Jogador.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,3,0)
                         task.wait(0.2)
                     end
                 end
             end)
             -- Pegar Ferro / Raio / Planta
             pcall(function()
                 local ilha = workspace:FindFirstChild("ThunderIsland") or workspace:FindFirstChild("TikiOutpost")
                 if ilha then Jogador.Character.HumanoidRootPart.CFrame = ilha.Spawn.CFrame end
             end)
         end
     end)
 end
 return PegarMateriais
