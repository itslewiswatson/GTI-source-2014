local marker1 = createMarker(213.099609375,1473.19921875,1703.5999755859,"arrow",1,79,79,79,255)
local marker2 = createMarker(352.60000610352,1279.6999511719,1594.6999511719,"arrow",1,79,79,79,255)
       setElementDimension ( marker1, 51 )
       setElementDimension ( marker2, 51 )
function teleportPlayer( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 352.51547, 1278.18567, 1594.26721 )
       setElementDimension ( hitElement, 51 )
		end	
end


function teleportPlayer2( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 212.03857, 1473.14697, 1703.25623 )
       setElementDimension ( hitElement, 51 )
end
end


addEventHandler("onMarkerHit", marker1, teleportPlayer)
addEventHandler("onMarkerHit", marker2, teleportPlayer2)

