     
--[[
This function removes a member from the party

@param playerID : fetches the ID of the player. Party leader.
@param memberName: Member to remove from the party.

]]--
function removeMemberFromParty(playerId, memberName)
    -- CHANGE: creating a new player object and made it a local variable
    local player = Player:new(playerId)
    local party = player:getParty()
    -- CHANGE: variable names to something more readable. 
    for memberKey, dataValue in pairs(party:getMembers()) do
        if dataValue == memberName then
            party:removeMember(dataValue)
            break -- exiting the loop so we don't go through the entire members in the party after we got rid of the user
        end
    end
end