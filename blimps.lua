local blimps = {
    {
        coords = vector3(13.1580, -1107.3882, 29.0955),
        sprite = 313,        -- Go To This Website For The Blimp List https://docs.fivem.net/docs/game-references/blips/
        color = 40,          -- Optional: Blip Color Go To https://docs.fivem.net/docs/game-references/blips/
        scale = 0.8,        -- Optional: Blimp Scale 0.8 Is The Default Size For Blimps
        name = "Ammunation"
    }
}

CreateThread(function()
    for _, blimp in pairs(blimps) do
        local blip = AddBlipForCoord(blimp.coords.x, blimp.coords.y, blimp.coords.z)
        SetBlipSprite(blip, blimp.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blimp.scale or 0.8)
        SetBlipColour(blip, blimp.color or 1)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blimp.name or "Custom Blimp")
        EndTextCommandSetBlipName(blip)
    end
end)
