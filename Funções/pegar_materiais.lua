local PegarMateriais = {}
 function PegarMateriais.Iniciar()
     print("📦 MATERIAIS BARCO CAÇADOR — ABERTO")
     local Jogador = game:GetService("Players").LocalPlayer
     local GUI = Jogador:WaitForChild("PlayerGui"):WaitForChild("LczinX_Hub")
     local Aba = Instance.new("Frame")
     Aba.Size = UDim2.new(0, 280, 0, 340)
     Aba.Position = UDim2.new(0, 310, 0, 50)
     Aba.BackgroundColor3 = Color3.fromRGB(20, 30, 50)
     Aba.BorderSizePixel = 0
     Aba.Parent = GUI
     local Titulo = Instance.new("TextLabel")
     Titulo.Size = UDim2.new(1,0,0,35)
     Titulo.BackgroundColor3 = Color3.fromRGB(30, 60, 120)
     Titulo.Text = "📦 MATERIAIS • BARCO CAÇADOR"
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
     Info.TextWrapped = true
     Info.Text = [[
 ✅ O QUE PRECISA:
 🐉 Escama Leviathan: 20/0 ❌
 ⚡ Asa Elétrica: 6/0 ❌
 💰 Ouro de Tolo: 30/0 ❌
 🦷 Dente de Tubarão: 6/0 ❌
 🦷 Dente Mutante: 2/0 ❌
 📍 ONDE PEGAR:
 • Escama → Matar Leviathan
 • Asa Elétrica → Piranhas (Mar 1-6)
 • Ouro de Tolo → Navio Fantasma / Baús
 • Dente Tubarão → Tubarões (Mar 1-3)
 • Dente Mutante → Tubarão Terror (Mar 2-6)
 🔄 FARMANDO AUTOMÁTICO...
 ]]
     Info.Parent = Aba
     local Fechar = Instance.new("TextButton")
     Fechar.Size = UDim2.new(0,30,0,30)
     Fechar.Position = UDim2.new(1,-35,0,2)
     Fechar.BackgroundColor3 = Color3.fromRGB(180,30,30)
     Fechar.Text = "X"
     Fechar.TextColor3 = Color3.new(1,1,1)
     Fechar.Parent = Aba
     Fechar.MouseButton1Click:Connect(function() Aba:Destroy() end)
     -- FARM AUTOMÁTICO DE TODOS
     spawn(function()
         while Aba and Aba.Parent do
             task.wait(1.2)
             pcall(function()
                 -- Pegar Asa Elétrica (Piranhas)
                 for _,v in pairs(workspace:GetDescendants()) do
                     if v:IsA("Model") and v.Name:find("Piranha") then
                         Jogador.Character.HumanoidRootPart.CFrame=v.Head.CFrame+Vector3.new(0,8,0)
                     end
                     -- Tubarões
                     if v:IsA("Model") and v.Name:find("Shark") and not v.Name:find("Leviathan") then
                         Jogador.Character.HumanoidRootPart.CFrame=v.Head.CFrame+Vector3.new(0,8,0)
                     end
                 end
                 -- Ir pra área de Navio Fantasma / Ouro
                 local navio = workspace:FindFirstChild("GhostShip")
                 if navio then Jogador.Character.HumanoidRootPart.CFrame=navio.CFrame+Vector3.new(0,10,0) end
             end)
         end
     end)
 end
 return PegarMateriais
