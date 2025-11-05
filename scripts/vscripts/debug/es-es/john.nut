Caroline.John <- {}

Caroline.John.Parser <- Caroline.Parser([

	# . , ¡ ! ¿ ? ~ ( )
	# a e i o u
	# A E I O U
	# b c d f g h j k l m n ñ p q r s t v w x y z
	# B C D F G H J K L M N Ñ P Q R S T V W X Y Z
	# á é í ó ú ü
	# Á É Í Ó Ú Ü

	-127, -119, -115, -111, -109, -102, -100, -95, 33, 40, 41, -87, 44, -83, 46, -79, -77, -70, -68, 63, -65, 65, -62, -61, 66, 69, 67, 68, 70, 73, 71, 72, 74, 75, 76, 79, 77, 78, 80, 81, 82, 85, 83, 84, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 126
])

Caroline.John.Model <- Caroline.Model([

	Caroline.Danse([

		{ w = 0, b = 0.103 }
	])
])

Caroline.John.Chat <-
{
	function EmitSoundOn (Pl)
	{

	}

	function OnGameEvent_player_say (event)
	{
		local Pl = GetPlayerFromUserID(event.userid)

		# Ignora los mensajes de jugadores muertos
		if (Pl.IsDead()) return

		# Obtiene del mensaje, el modelo del autor
		# local model = Pl.GetModelName()

		# Ignora los mensajes de otros autores
		# if (model != "models/survivors/survivor_gambler.mdl") return

		# Obtiene el idioma del mensaje (funcional con mapas que escriben en el chat)
		# local lang = Convars.GetClientConvarValue("cl_language", (IsPlayerABot(Pl) ? GetListenServerHost() : Pl).GetEntityIndex())

		# Ignora los mensajes en otros idiomas
		# if (lang != "spanish") return

		foreach (i in Caroline.John.Parser.CollectCharacterIndex(event.text)) print(format("%d ", i))

		print("\n")
	}
}

__CollectEventCallbacks(Caroline.John.Chat, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener)
