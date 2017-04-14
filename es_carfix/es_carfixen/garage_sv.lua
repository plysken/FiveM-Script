RegisterServerEvent('garage:askmoney')
AddEventHandler('garage:askmoney', function(total)
  	print("Player ID " ..source)

	-- Get the players money amount
	TriggerEvent('es:getPlayerFromId', source, function(user)
		if (tonumber(user.money) >= tonumber(total)) then
			TriggerClientEvent('garage:FixingCar',source)
	  	-- update player money amount
			user:removeMoney((total + 0.0))
			TriggerClientEvent("es_freeroam:notify", source, "CHAR_BANK_MAZE", 1, "Maze Bank", false, "You have paid ".. tonumber(total).." ~g~$ of reparation")
		else
			TriggerClientEvent("es_freeroam:notify", source, "CHAR_SIMEON", 1, "Simeon", false, "You don't have anought money for that!\n")
		end
 	end)
end)