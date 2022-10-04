local __all = false
CreateThread(function()
    while true do
        local _s = 1000
        local player = PlayerPedId()
        local ppos = GetEntityCoords(player)
        for k, v in pairs(CFG.SPK) do    
                if #(ppos - v) < 3 then
                    _s = 0
                   if __all == true then 
                        QBCore.Help(Lang:t("help.dont"), v)
                        else 
                            DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.2, 0, 0, 0, 350, 0, 0, 0, 12, 0, 0, 0)
                            QBCore.Help(Lang:t("help.text"), v)
                            if IsControlJustReleased(0, 58) then
                            QBCore.Functions.Progressbar('r-shop', Lang:t("prog.spk"), 5000, false, true, { 
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {
                                animDict = '',
                                anim = '',
                                flags = 16,
                            }, {}, {}, function() 
                                openMenu()
                            end)
                         end
                    end
                end
            end
        Wait(_s)
    end
end)
CreateThread(function(veh)
    while true do
        local _s = 1000
        local player = PlayerPedId()
        local ppos = GetEntityCoords(player)
        for k, a in pairs(CFG.RET) do
            _s = 1
            if #(ppos - a) < 10 then
                if __all == true then 
                    QBCore.Help(Lang:t("help.save"), a)
                    DrawMarker(1, a.x, a.y, a.z, 0, 0, 0, 0, 0, 0, 3.5, 3.2, 0.1, 0, 0, 0, 200, 0, 0, 0, 0)
                    if IsControlJustReleased(0, 58) then 
                        DeleteVehicle(GetVehiclePedIsIn(player))
                        __all = false
                        QBCore.Functions.Notify(Lang:t("noti.savet"))
                    end
                end
            end
        end
        Wait(_s)
    end
end)
function openMenu()
    exports['qb-menu']:openMenu({
        {
            header = Lang:t("menu.tile"),
            icon = 'fas fa-code',
            isMenuHeader = true,  
        },
        {
            header = Lang:t("menu.buttomtitle"),
            txt = Lang:t("menu.buttomdesc"),
            icon = 'fas fa-code-merge',
            params = {
                event = 'spawn'
            }
        },  
        {
            header =  Lang:t("menu.close"),
            params = {
                event = "qb-menu:closeMenu"
            }
        }
        
    })
end

-- RegisterCommand('s', function()
--     TriggerEvent('spawn')
-- end)

RegisterNetEvent('spawn', function(data)
    __all = true
   for k, vh in pairs(CFG.SPAWN) do
        QBCore.Functions.SpawnVehicle(CFG.VH, function(veh)   
            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
            export[CFG.FUEL]:SetFuel(veh, 100)
            TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
     end, vh, true)
    QBCore.Functions.Notify(Lang:t("noti.info"))
    end
end)
CreateThread(function()
    for k, v in pairs(CFG.SPK) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(blip, 404)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 37)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("SURFT")
        EndTextCommandSetBlipName(blip)
    end
end)
