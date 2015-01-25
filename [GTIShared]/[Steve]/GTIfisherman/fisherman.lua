function checkData()
	if ( source == localPlayer ) then
	outputDebugString( "Source is: "..getPlayerName( localPlayer ).." with job "..getElementData( source, "job" ).."." )
		if ( getElementData( source, "job" ) == "Fisherman" ) then
			exports.GTIhelp:dm( "Go catch me some fish! Pick a boat over there in the water", 250, 120, 0 )
			triggerServerEvent( "setPlayerFishingData", localPlayer )
			outputDebugString( "triggered server fishing data" )
		end
	end
end
addEvent( "onClientPlayerGetJob", true )
addEventHandler( "onClientPlayerGetJob", getRootElement(), checkData )

