local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

 local botaodh = false

RegisterNetEvent("DH")
AddEventHandler("DH",function()
    botaodh = not botaodh
    if botaodh then
        TriggerEvent("Notify","sucesso","RGB Ligado",3500)
    else
        TriggerEvent("Notify","negado","RGB Desligado",3500)
    end
end)


Citizen.CreateThread(function()
    repeat
        Citizen.Wait(1)
        local peddh = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(peddh,true)
        if botaodh then
            local dhtemp = 1
            local r = 0
            local g = 0
            local b = 0
            repeat 
                r = r + 1
                Wait(dhtemp)
            until r >= 250
            repeat 
                g = g + 1
                Wait(dhtemp)
            until g >= 250
            repeat 
                b = b + 1
                Wait(dhtemp)
            until b >= 250
            repeat
                r = r -1
                Wait(dhtemp)
            until r <= 1
            repeat
                g = g -1
                Wait(dhtemp)
            until g <= 1
            repeat
                b = b -1
                Wait(dhtemp)
            until b <= 1   
            SetVehicleCustomPrimaryColour(vehicle, r,g,b)
            SetVehicleCustomSecondaryColour(vehicle,r,g,b)
        end
    until false
end)
