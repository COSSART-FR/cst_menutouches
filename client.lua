local open = false
RegisterCommand("touches", function()
	if not open then
		Touche()
	else
		Touche()
		SendNUIMessage({
			ativa = false
		})
	end
end, false)
function Touche()
	if open then
		open = false
		return
	else
		open = true
		SendNUIMessage({
			ativa = true
		})
		Citizen.CreateThread(function ()
			while open do
				Citizen.Wait(5.0)
				if IsControlJustReleased(0, 178) then
					Touche()
					SendNUIMessage({
						ativa = false
					})
				end
			end
		end)
	end
end
