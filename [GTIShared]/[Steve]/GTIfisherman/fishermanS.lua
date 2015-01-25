--Table to be edited later. Current table is for script testing
--["Fish"] = { Chance, MinWeight, MaxWeight }
local fish = {
	["Minnow"] = { 10, 0.1, 0.7 },
	["Pike Perch"] = { 15, 1, 3 },
	["Shark"] = { 4, 1, 14 },
	["Shrimp"] = { 7, 4, 6 },
	["Catfish"] = { 3, 10, 100 },
	["Brook Trout"] = { 8, 6, 9 },
	["Coal Fish"] = { 9, 2, 9 },
	["Sea bass"] = { 2, 4, 205 },
	["Pollack"] = { 5, 2, 15  },
	["Hake"] = { 10, 1, 3 },
}

--Boat rank check
local av = {
	[473] = 0,
	[454] = 1,
	[452] = 2,
	[453] = 3,
	[493] = 4,
	[484] = 5,
	[446] = 6,
}

local ppkg = 100 --Pay per KG
local fstats

--Set Fishing Data
function setFdata()
	outputDebugString( "setPlayerFishingData was triggered for player: "..getPlayerName( client) )
	local acc = getPlayerAccount( client )
	local data = fromJSON( getAccountData( acc, "fishingstats" ) )
	if ( not data or data == nil ) then
		local stats = toJSON ( { lvl = 0, pts = 0, caught = 0, weight = 0 } )
		outputDebugString( stats )
		setAccountData( acc, "fishingstats", stats )
		outputDebugString( "Data for player: "..getPlayerName( client ).." was set." )
	end
end
addEvent( "setPlayerFishingData", true )
addEventHandler( "setPlayerFishingData", root, setFdata )

addEventHandler( "onVehicleStartEnter", root, 
	function( player, seat )
		local acct = getPlayerAccount( player )
		local fstats = fromJSON( getAccountData( acct, "fishingstats" ) )
		local boat = getElementModel( source )
		--local job = exports.GTIjobs:getPlayerJob( player, true )
		if ( getVehicleType( boat ) == "Boat" and getElementData( player, "job" ) == "Fisherman" ) then
			if not ( fstats ) then outputDebugString( "Player: "..getPlayerName( player ).." has not had any fishing stats set!" ) return end
			for k, v in pairs( fstats ) do
				if ( k == "lvl" ) then
					if ( av[ boat ] ) and ( av[ boat ] <= v ) then
						--fishing triggers here
					else
						exports.GTIhelp:dm( player, "You must be level "..av[ boat ].." to use this boat. You are level "..v..".", 250, 120, 0 )
						cancelEvent()
					end
				end
			end
		end
	end 
)

function statsc ( player )
	outputDebugString( "triggered cmd" )
	local acct = getPlayerAccount( player )
	local fstats = fromJSON( getAccountData( acct, "fishingstats" ) ) 
	for k, v in pairs( fstats ) do
		outputDebugString( k.." = "..v )
	end
end
addCommandHandler( "showStats", statsc )

	