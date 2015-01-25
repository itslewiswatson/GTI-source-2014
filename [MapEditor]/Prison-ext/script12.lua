local marker1 = createMarker(213.099609375,1485.2998046875,1703.5999755859,"arrow",1,79,79,79,255)
local marker2 = createMarker(614.5,1183.0999755859,2230.1000976563,"arrow",1,79,79,79,255)
       setElementDimension ( marker1, 51 )
       setElementDimension ( marker2, 51 )
function teleportPlayer( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 612.97937, 1184.69116, 2229.68213 )
       setElementDimension ( hitElement, 51 )
		end	
end


function teleportPlayer2( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 211.27586, 1485.22168, 1703.25623 )
       setElementDimension ( hitElement, 51 )
end
end


addEventHandler("onMarkerHit", marker1, teleportPlayer)
addEventHandler("onMarkerHit", marker2, teleportPlayer2)

