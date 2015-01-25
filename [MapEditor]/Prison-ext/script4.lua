local marker1 = createMarker(209.69999694824,1410.9000244141,11.300000190735,"arrow",1.5,79,79,79,255)
local marker2 = createMarker(206.30000305176,1493.8000488281,1704,"arrow",1.5,79,79,79,255)
setElementDimension ( marker2, 51)

function teleportPlayer( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 208.20709, 1493.63062, 1703.25623 )
       setElementDimension ( hitElement, 51 )
		end	
end


function teleportPlayer2( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 205.87756, 1410.77332, 10.58594 )
       setElementDimension ( hitElement, 0 )
end
end


addEventHandler("onMarkerHit", marker1, teleportPlayer)
addEventHandler("onMarkerHit", marker2, teleportPlayer2)

