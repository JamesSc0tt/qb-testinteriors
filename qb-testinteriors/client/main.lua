QBCore = exports['qb-core']:GetSharedObject()

local currentInt = false
local prevCoords = false

RegisterNetEvent('qb-testinteriors:spawn', function(intid)
	if currentInt then
		-- dont
	else
		-- do things
		if CONFIG.interiors[intid] then
			local coords = GetEntityCoords(PlayerPedId())
			prevCoords = coords
			local data = CONFIG.interiors[intid]({
				x = coords.x,
				y = coords.y,
				z = coords.z - CONFIG.zoffset,
			})
			currentInt = data[1]
		else
			-- interior doesn't exist...
		end
	end
end)

RegisterNetEvent('qb-testinteriors:despawn', function()
	if currentInt then
		exports['qb-interior']:DespawnInterior(currentInt, function()
			currentInt = false
			SetEntityCoords(PlayerPedId(), prevCoords)
		end)
	end
end)