local marker = createMarker(288,1411.8000488281,9.3999996185303,"cylinder",10,0,0,0,0)
local gate = createObject(985, 287.3994140625, 1407, 11.10000038147, 0,0,270)
local gate2 = createObject(986, 287.3994140625, 1414.8994140625, 11.10000038147, 0,0,270)

function openMyGate (Player)
        if (getElementType(Player)== "player") then
                if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
                if isElementWithinMarker(Player, marker) then
   moveObject( gate, 985, 287.3994140625, 1398.8994140625, 11.300000190735)
   moveObject( gate2, 986, 287.3994140625, 1423.2998046875, 11.10000038147)
      
                end
        end
end
end
function closeMyGate(Player)
        moveObject( gate, 985, 287.3994140625, 1407, 11.10000038147)
moveObject( gate2, 986, 287.3994140625, 1414.8994140625, 11.10000038147)
end

function chatboxmsg(Player)
         if (getTeamName(getPlayerTeam(Player)) == "Department of Corrections") then
         outputChatBox ( "(( To open this gate, use /maingate ))", Player)
else
			outputChatBox ( "", hitElement, 255, 0, 0, false )
		end
end
addCommandHandler("maingate", openMyGate)
addEventHandler("onMarkerLeave", marker, closeMyGate)
addEventHandler("onMarkerHit", marker, chatboxmsg)

