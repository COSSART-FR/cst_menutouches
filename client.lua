RegisterCommand("touches", function(source, args, rawCommand)

	SetNuiFocus( true, true )
	SendNUIMessage({
		ativa = true
	})
end, false)


RegisterNUICallback('fechar', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
	ativa = false
	})
  	cb('ok')
end)