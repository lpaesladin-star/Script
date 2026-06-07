local Leviathan = {}

function Leviathan.Iniciar()
    print("🐉 CAÇA LEVIATHAN LIGADA!")
    spawn(function()
        while wait(2) do
            -- Vai para mar nível 6
            -- Chama barco
            -- Ataque automático
            -- Pega escamas e coração
            pcall(function()
                for _,v in pairs(workspace:GetDescendants()) do
                    if v.Name:find("Leviathan") then
                        -- Mira e bate
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame + Vector3.new(0,10,0)
                        -- Usa habilidades
                    end
                end
            end)
        end
    end)
end

return Leviathan
