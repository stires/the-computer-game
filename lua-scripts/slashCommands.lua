
--required script

local commands = {} --get the table for the commands to be stored

local admins = {
    "Eerie_Myst"; --try remove eerie_myst (me), nothing will work on my end
    "Metalgear_bloxxer";
    "FrinedlyX1" --honestly these are just friends that ill add for now
}

local prefix = "/" --prefix to call the commands

local function findPlayer(name) -- name should be equal to a string.


    for i, player in pairs(game.Players:GetPlayers()) do
        if string.lower(player.Name) == name then
            return player  -- this should return the player object if the name has been logged
        end
    end

    return nil -- no player was found :(

end

local function isAdmin(player) --player; object
    for _, v in pairs(admins) do
        if v == player.Name then
            return true -- if it's been ound inside the admin table, it should return true
        end
    end

     return false -- no player was found whatsoever :(

end

commands.tp = function(sender, arguments) --sender: object | arguments: Table

print('TP function fired by'..sender.Name)

    for _, player in pairs (arguments) do
        print(playerName)
    end

    local playerToTeleportName = arguements[1]
    local playerToTeleportToName = arguements[2] --these should be passed properly, and shouldnt be logged as nil

    if playerToTeleportToName and playerToTeleportName then
        local plrToTP = findPlayer(playerToTeleportName)
        local plrToTPTo = findPlayer(playerToTeleportToName) -- call the function twice to get the playernames that are sent to the console.

        if plrToTP and plrToTPTo then
            plrToTP.Character.HumanoidRootPart.CFrame = plrToTPTo.Character.HumanoidRootPart.CFrame
            print('successfully moved') --if this works, this will be in the output

        end
    end 

end

commands.speed  = function(sender, arguments) --offload this for now --also, if you do /speed me 30, the game will only recieve it was me 30 which will mean nothing at all
    print('speed command fired by '..sender.Name)
    local playerToGiveSpeedTo = arguements[1] --manip the args accordingly
    local amountOfSpeedToGive = arguments[2]

if playerToGiveSpeedTo then
     local plr = findPlayer(playerToGiveSpeedTo)

     if plr then 
        plr.Character.Humanoid.WalkSpeed  = tonumber(amountOfSpeedToGive)
        print(playerToGiveSpeedTo.."was given walkspeed "..amountOfSpeedToGive) -- no need to transfer to text string
     end
    end
end

--thankfuly for this genuis design
--we don't need to edit the code in the slightest that's below this comment if we are adding a new command.

--error testing will happen with debug later


game.Players.PlayerAdded:Connect(function(player) --connect a function that recognizes the players sent message directly on event
        player.Chatted:Connect(function(message, recipient) --finds the message, and finds the user who is recieving the message
        if isAdmin(player) then
        



            local splitString = message:split(" " ) --splits on whitespace detection

            local slashCommand = splitString[1]

            local comand = slashCommand:split(prefix) --splits our prefixes such as "/" & the tp keyword
            local commandName  = command[2]

            if command [commandName] then

                local arguements = {} --contains the split parts of the message, e.g. "eerie_myst" & 'bob'

                for i = 2, #splitString, 1 do
                    table.insert(arguments,splitString[i])--grabs the second arg from the local splitstring which are the players names (msg recipient, & msg sender)
                end

                    commands[commandName](player) -- this fires on the global chatted event
                end
            end
        end)
    end)

--im actually really tired
--i should probably stop here for the day...

--thank you so much alvin_blox <3
-- : )