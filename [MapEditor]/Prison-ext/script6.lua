local marker = createMarker(156.3994140625,1491, 1708.5999755859,"cylinder",1.5,0,0,0,0)
local gate = createObject(3089, 156.10000610352, 1490.1999511719, 1710, 0,0,90)
        setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )
function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 3089, 156.10000610352, 1488.9000244141, 1710)
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 3089, 156.10000610352, 1490.1999511719, 1710)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door2 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door2", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

