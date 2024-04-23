-- This method relesases storage of an associated player object
-- @param player: object of player entity 
-- @param storageValue: storage value to release -- REASON: adding flexibilty to accept a custom storage value. Assuming Storage is an object with its own methods getting/setting these values.
local function releaseStorage(player, storageValue) 
    -- confirming player is a valid object
    if player then 
        player:setStorageValue(storageValue, -1) 
    -- if not, printing an error to the console in the call stack
    else
        error("invalid player object in releaseStorage")
    end
end  
  
function onLogout(player)  
if player:getStorageValue(1000) == 1 then  
addEvent(releaseStorage, 1000, player)  
end  
return true  
end  
