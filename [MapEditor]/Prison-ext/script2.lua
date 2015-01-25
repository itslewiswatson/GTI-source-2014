local marker = createMarker(239.099609375,1480.099609375, 9,"cylinder",9,0,0,0,0)
local gate = createObject(975, 238.8994140625, 1480.099609375, 11.300000190735, 0,0,270)

function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 975, 238.8994140625, 1471.7998046875, 11.300000190735)
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 975, 238.8994140625, 1480.099609375, 11.300000190735)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this gate, use /gate1 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("gate1", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

