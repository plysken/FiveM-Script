-- Loading MySQL Class
require "resources/essentialmode/lib/MySQL"
MySQL:open("localhost", "gta5_gamemode_essential", "ncgamers_gtarp", "TRsZEAo8qk0CNoXc")

RegisterServerEvent('life:savepos')
AddEventHandler('life:savepos', function(pos)
  TriggerEvent('es:getPlayerFromId', source, function(user)

    local player = user.identifier
    print('Save Position: '..player)

      -- Save this shit to the database
      MySQL:executeQuery("UPDATE users SET lastpos='@pos' WHERE identifier = '@username'",
      {['@username'] = player, ['@pos'] = pos})

      -- Trigger some client stuff
      TriggerClientEvent("es_freeroam:notify", source, "CHAR_DEFAULT", 1, ""..player, false, "Position sauvegardé!\n")
  end)
end)

RegisterServerEvent('life:salary')
AddEventHandler('life:salary', function()
  	print("Player ID " ..source)
  	local salary = 100
	-- Get the players money amount
	TriggerEvent('es:getPlayerFromId', source, function(user)

  	-- update player money amount
  	user:addMoney((salary + 0.0))
 	--TriggerClientEvent("es_freeroam:notify", source, "CHAR_BANK_MAZE", 1, "Maze Bank", false, "Salaire de base de "..salary.." ~g~$ de reparation")
 	end)
end)
