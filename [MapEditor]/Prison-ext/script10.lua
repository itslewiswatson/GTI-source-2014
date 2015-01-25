local marker = createMarker(212.5,1466.8000488281, 1702.1999511719,"cylinder",1.5,0,0,0,0)
local gate = createObject(3089, 213.2998046875, 1466.7998046875, 1703.5, 0,0,180)
       setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )
function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 3089, 214.69999694824, 1466.7998046875, 1703.5)
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 3089, 213.2998046875, 1466.7998046875, 1703.5)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door6 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door6", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

