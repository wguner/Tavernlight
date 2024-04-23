--[[


--]]

--[[
This method relesases storage of an associated player object
@param player: object of player entity 
@param storageValue: storage value to release
        REASON: Adding flexibility to accept a custom storage value. 
                Assuming Storage is an object with its own methods getting/setting these values.
--]]
local function releaseStorage(player, storageValue) 
    -- confirming player is a valid object
    if player then 
        player:setStorageValue(storageValue, -1) 
    -- if not, printing an error to the console in the call stack
    else
        error("invalid player object in releaseStorage")
    end
end  

--[[
This is an event handler.

CHANGES: Got rid of the return value. This method is responsible for event handling we don't need to return anything.
         I do not like we're using hard-coded values like (1) and (-1) 
@param player: object of player entity 
@param storageValue: storage value -- REASON: adding flexibilty to accept a custom storage value. Assuming Storage is an object with its own methods getting/setting these values.
--]]
function onLogout(player)  
    if player:getStorageValue(storageValue) == 1 then  
        addEvent(releaseStorage, 1000, player)  
    end  
end  
