local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

RegisterCommand('rgb',function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if  vRP.hasPermission(user_id,"dono.permissao") or vRP.hasPermission(user_id,"adm.permissao") then
			TriggerClientEvent("DH",player)
		end
	end
end)   