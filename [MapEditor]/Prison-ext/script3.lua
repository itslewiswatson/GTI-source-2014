local marker1 = createMarker(254.80000305176,1412.6999511719,12.199999809265,"arrow",2,79,79,79,255)
local marker2 = createMarker(167.60000610352,1500.4000244141,1711,"arrow",2,79,79,79,255)
setElementDimension ( marker2, 51)

function teleportPlayer( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 165.99901, 1500.37427, 1709.65002 )
                        setElementDimension ( hitElement, 51)
		end	
end


function teleportPlayer2( hitElement, matchingDimension )
	if getElementType( hitElement ) == "player" then
			setElementPosition ( hitElement, 255.77043, 1415.01855, 11.11250 )
                        setElementDimension ( hitElement, 0)

end
end


addEventHandler("onMarkerHit", marker1, teleportPlayer)
addEventHandler("onMarkerHit", marker2, teleportPlayer2)

