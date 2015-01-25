function createAndAssignTeam ( source, commandName, DOC )
  local DOC = createTeam ( "Department of Corrections", 150, 150, 255 ) 
  if DOC then                          
    setPlayerTeam ( source, DOC ) 
outputChatBox ( "You are now in the DOC team, check 'TAB'", getRootElement(), 0, 255, 0, true )
  end
end
addCommandHandler ( "doc", createAndAssignTeam )