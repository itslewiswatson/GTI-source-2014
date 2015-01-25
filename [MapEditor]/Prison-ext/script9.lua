local marker = createMarker(178.19999694824,1469.1999511719, 1702.1999511719,"cylinder",3,0,0,0,0)
local gate = createObject(976, 178.099609375, 1473, 1702.1, 0,0,270)
       setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )
function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 976, 178.099609375, 1479.8000488281, 1702.1)
                end
        end
end
end

function closeMyGate(Player)
        moveObject( gate, 976, 178.099609375, 1473, 1702.1)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door5 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door5", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

