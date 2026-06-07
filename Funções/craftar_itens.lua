local Craft = {}

function Craft.Tudo()
    print("⚒️ Craftando: Belt Run + Barco Caçador...")
    -- Vai até NPC Caçador de Tubarões
    pcall(function()
        local npc = workspace.TikiOutpost.NPCs.SharkHunter
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = npc.Head.CFrame + Vector3.new(0,3,5)
        wait(1)
        -- Clica e crafta automaticamente
    end)
end

return Craft
