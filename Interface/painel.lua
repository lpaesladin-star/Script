local Painel = {}

function Painel.Criar(pai)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 280, 0, 380)
    frame.Position = UDim2.new(0.02, 0, 0.2, 0)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true
    frame.Parent = pai

    local titulo = Instance.new("TextLabel")
    titulo.Size = UDim2.new(1,0,0,40)
    titulo.BackgroundColor3 = Color3.fromRGB(30, 30, 60)
    titulo.Text = "LCZINX HUB • BLOX FRUITS"
    titulo.Font = Enum.Font.GothamBold
    titulo.TextSize = 15
    titulo.TextColor3 = Color3.new(1,1,1)
    titulo.Parent = frame

    local conteudo = Instance.new("Frame")
    conteudo.Size = UDim2.new(1,-10,1,-50)
    conteudo.Position = UDim2.new(0,5,0,45)
    conteudo.BackgroundTransparency = 1
    conteudo.Parent = frame

    return conteudo
end

function Painel.AdicionarBotao(janela, nome, acao)
    local qtd = #janela:GetChildren()
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1,0,0,40)
    btn.Position = UDim2.new(0,0,0, qtd * 45)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 70)
    btn.Text = nome
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Parent = janela

    btn.MouseButton1Click:Connect(acao)
    btn.MouseEnter:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(60,60,100) end)
    btn.MouseLeave:Connect(function() btn.BackgroundColor3 = Color3.fromRGB(40,40,70) end)
end

return Painel
