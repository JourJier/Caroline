Caroline.John <- {}

Caroline.John.Parser <- Caroline.Parser([

	10, 33, 40, 41, 44, 46, 63, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 126, -127, -119, -115, -111, -109, -102, -100, -95, -87, -83, -79, -77, -70, -68, -65, -62, -61
])

Caroline.John.Chat <-
{
	function OnGameEvent_player_say (event)
	{
		local Pl = GetPlayerFromUserID(event.userid)

		# Ignora los mensajes de jugadores muertos
		if (Pl.IsDead()) return

		# Obtiene del mensaje, el modelo del autor
		local model = Pl.GetModelName()

		# Ignora los mensajes de otros autores
		if (model != "models/survivors/survivor_gambler.mdl") return

		# Obtiene el idioma del mensaje (funcional con mapas que escriben en el chat)
		local lang = Convars.GetClientConvarValue("cl_language", (IsPlayerABot(Pl) ? GetListenServerHost() : Pl).GetEntityIndex())

		# Ignora los mensajes en otros idiomas
		if (lang != "spanish") return

		foreach (i in Caroline.John.Parser.CollectCharacterIndex(event.text)) print(format("%d ", i))

		print("\n")
	}
}

__CollectEventCallbacks(Caroline.John.Chat, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener)
