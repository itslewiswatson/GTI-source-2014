local marker = createMarker(158.30000305176,1497.1999511719, 1708.5999755859,"cylinder",2,0,0,0,0)
local gate = createObject(5856, 158.2998046875, 1497.099609375, 1710.4000244141, 0,0,90)
       setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )

function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 5856, 158.2998046875, 1497.099609375, 1713.0999755859)
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 5856, 158.2998046875, 1497.099609375, 1710.4000244141)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door1 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door1", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

