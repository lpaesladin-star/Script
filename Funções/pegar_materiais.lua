local Materiais = {}

function Materiais.Iniciar()
    print("ðŸ”„ Pegando todos materiais...")
    -- Madeira
    spawn(function()
        while wait(1.5) do
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("Part") and v.Name:lower():find("tree") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait(0.2)
                end
            end
        end
    end)

    -- Ferro, Raio, Planta de Velocidade
    spawn(function()
        while wait(2) do
            -- Teleport para Ilha TrovÃ£o / Tiki
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.ThunderIsland.Spawn.CFrame
            end)
        end
    end)

    -- Berries e Fragmentos
    spawn(function()
        while wait(3) do
            -- Farm automÃ¡tico de chefes
        end
    end)
end

return Materiais
