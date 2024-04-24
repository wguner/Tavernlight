--[[
Setenay Guner

]]--

function printSmallGuildNames(memberCount)
    -- Assuming we have a valid database connection named 'db'
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    -- Catching any errors with pcall https://www.lua.org/pil/8.4.html
    local resultId, err = pcall(function()
        return db.storeQuery(string.format(selectGuildQuery, memberCount))
    end)
    if not resultId then
        print("Error executing query:", err)
        return
    end
    
    -- Before we were printing only one guild name
    -- Writing a loop to print the result of the query 
    -- Assuming db has fetchRow() method in that goes through the row
    while db.fetchRow(resultId) do
        local guildName = db.getString(resultId, "name")
        print(guildName)
    end
end
    

