--[[


--]]

--[[
This method relesases storage of an associated player object
@param player: object of player entity 
@param storage: object of storage entity 
        REASON: Adding flexibility to accept a custom storage value. 
                Assuming Storage is an object with its own methods getting/setting these values.
                I do not like we are hard coding (1000) and (-1) values. These should be kept in a class and updated accordingly throughout events.
--]]
local function releaseStorage(player, storage) 
    -- confirming player is a valid object
    if player then 
        player:setStorageValue(storage.value, storage.release) 
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
@param storage: object of storage entity -- REASON: adding flexibilty to accept a custom storage value. Assuming Storage is an object with its own methods getting/setting these values.
--]]
function onLogout(player, storage)  
    if player:getStorageValue(storage.value) == storage.key then  
        addEvent(releaseStorage, storage.value, player)  
    end  
end  
