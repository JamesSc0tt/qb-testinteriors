QBCore = exports['qb-core']:GetSharedObject()

QBCore.Commands.Add("testint", "Spawn an interior for testing (Admin Only)", {}, false, function(source, args)
	if args[1] and tonumber(args[1]) then
		TriggerClientEvent('qb-testinteriors:spawn', source, tonumber(args[1]))
	end
end, "admin")

QBCore.Commands.Add("delint", "Delete the current testing interior (Admin Only)", {}, false, function(source, args)
	TriggerClientEvent('qb-testinteriors:despawn', source)
end, "admin")