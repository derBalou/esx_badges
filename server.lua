local ESX = nil
-- ESX
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Open ID card
RegisterServerEvent('esx_badges:open')
AddEventHandler('esx_badges:open', function(ID, targetID, type)
	local identifier = ESX.GetPlayerFromId(ID).identifier
	local targetID 	 = ESX.GetPlayerFromId(targetID).source

	MySQL.Async.fetchAll('SELECT firstname, lastname, job_grade, sex, height FROM users WHERE identifier = @identifier', {['@identifier'] = identifier},
	function (user)
		if (user[1] ~= nil) then
			
			MySQL.Async.fetchAll("SELECT label FROM `job_grades` WHERE grade = @grade AND job_name = @type", {['@grade'] = user[1].job_grade, ['@type'] = type}, 
			function(result) 
				local array = {
					user = user,
					namerank = result[1].label,
					licenses = licenses
				}
				TriggerClientEvent('esx_badges:open', targetID, array, type)
			end)
		end
	end)
end)

function getNameRank(i, type)
	MySQL.Async.fetchAll("SELECT label FROM `job_grades` WHERE grade = @grade AND job_name = @type", {['@grade'] = i, ['@type'] = type}, 
	function(result) 
		return result[1].label
	end)
end

