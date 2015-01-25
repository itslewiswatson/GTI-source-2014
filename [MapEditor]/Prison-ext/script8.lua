local marker = createMarker(172.60000610352,1477.1999511719, 1702.1999511719,"cylinder",3,0,0,0,0)
local gate = createObject(976, 172.7998046875, 1484.19921875, 1702.3000488281, 0,0,270)
       setElementDimension ( marker, 51 )
       setElementDimension ( gate, 51 )
function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 976, 172.80000305176, 1487.3000488281, 1702.3000488281)
                end
        end
end
end

function closeMyGate(Player)
        moveObject( gate, 976, 172.7998046875, 1484.19921875, 1702.3000488281)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this door, use /door4 ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("door4", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

