local marker = createMarker(160.3994140625,1480.8994140625, 1708.5999755859,"cylinder",2,0,0,0,0)
local gate = createObject(5856, 160.3994140625, 1481, 1710.4000244141, 0,0,180)
       setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )
function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 5856, 160.3994140625, 1481, 1713.1999511719)
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 5856, 160.3994140625, 1481, 1710.4000244141)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door3 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door3", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

