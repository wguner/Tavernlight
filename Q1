local function releaseStorage(player) 
    -- error handling here is always a great idea
    -- confirming player is a valid object
    if player then 
        player:setStorageValue(1000, -1) 
    -- if not, printing an error to the console
    else
        print ("invalid player object in releaseStorage")
    end
end  
  
function onLogout(player)  
if player:getStorageValue(1000) == 1 then  
addEvent(releaseStorage, 1000, player)  
end  
return true  
end  
