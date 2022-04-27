ocal commands = {} -- get the table for commands to be stored

local admins = {
   "eerie_myst" -- ill put myself on for now
}

local prefix = "/" --prefix to call the commands

local function findPlayer(name) --name should be equal to a string (finds the player who sent the message.)

local function findPlayers(name, name) --double params bc of the thingy

   for i, player in pairs(game.Players:GetPlayers()) do
      if string.lower(player.Name) == name then
         return player --this hsould return the player object if the name has been registered
      end
end

return nil -- no player was found if this happens

end


local function isAdmin(player) -- the player object once again
   for _, in pairs(admins) do
      if v == player.Name then
         return true -- if the name has been found inside the admin table, it should return as true
      end
   end


   return false -- no player was found :(   no admin commands for them...


end

--here comes the actual command scripting now

commands.tp = function(senderm arguments) --sender: object | arguments: table

   print('TP function fired by'..sender.Name)


      for _, player in pairs (arguments) do
         print(playerName)
      end



      local playerToTeleportToName = arguments[2]
      local playerToTeleportName = arguments[1] --if these have been logged correctly, the args should be passed (nil shouldn't be printed)
 
if playerToTeleportToName and playerToTeleportName then 
   local plrToTP = findPlayer(playerToTeleportName)
   local plrToTPTo = findPlayer(playerToTeleportToName) -- call the function twice to get the playernames that are sent to the console.


   if plrToTP and plrToTPTo then
      plrToTP.Character.HumanoidRootPart.CFrame = plrToTPTo.Character.HumanoidRootPart.CFrame
      print('player has been successfully moved') --if this function works this will be outputted
          end

      end
end


--sorry getting used to javascript
--anyway, lets do a speed command


commands.speed = function(sender, arguments) --offload this for now...
   print('speed command fired by'..sender.Name)
   local playerToGiveSpeedTo = arguments[1]
   local amountOfSpeedToGive = arguments[2]



   if playerToGiveSpeedTo then
      local plr = findPlayer(playerToGiveSpeedTo)



      if plr then
         plr.Character.Humanoid.WalkSpeed = tonumber(amountOfSpeedToGive)
         print(PlayerToGiveSpeedTo.."was given walkspeed"..amountOfSpeedToGive) -- no need to transfer the text to a string :) 
      end


   end


end


--thankfully for this genius design, we don't need to edit the code in the slightest..

--error testing will happen on debug later.

game.Players.PlayerAdded:Connect(function(player)
   player.Chatted:Connect(function(message, recipient)
      if isAdmin(player) then



         local splitString = message:split(" ") --splits if whitespace is detected
         
         local slashCommand = splitString[1]

         local command = slashCommand:split(prefix) -- splits our prefixes such as "/" & the tp keyword.
         local commandName = command[2]

         if command [commandName] then

            local arguments = {} --contains the split parts of the message, e.g. "eerie_myst" , "bob" and "tp".

            for i = 2, #splitString, 1 do
               table.insert(arguments, splitString[i]) --grabs the second arg from the local splitstring, which contains the player names.
         end


         commands[commandName](player) -- this fires on the global chatted event.
          end
      end
   end)
end)

--i think thats it..

--that was long

--i need to tweak this


local globalCommands = {}

local admins = {
    "eerie_myst" --tweakin
    "metalgear_bloxxer" -- essential test man
}


local globalPrefix = "`" --the default game prefix

local function findPlayer(name)

    for i, player in pairs(game.Players:GetPlayers()) do
        if string.lower(player.Name) == name then
           return player --this hsould return the player object if the name has been registered
        end
  end
  

end

--time for the multi tp command 

commands.tp = function(sender, arguments) --sender: object | arguments: table

    print('TP function fired by'..sender.Name)
 
 
       for _, player in pairs (arguments) do
          print(playerName)
       end
 
 
 
       local playerToTeleportToName = arguments[2]
       local playerToTeleportName = arguments[1] --if these have been logged correctly, the args should be passed (nil shouldn't be printed)
  
 if playerToTeleportToName and playerToTeleportName then 
    local plrToTP = findPlayer(playerToTeleportName)
    local plrToTPTo = findPlayer(playerToTeleportToName) -- call the function twice to get the playernames that are sent to the console.
 
 
    if plrToTP and plrToTPTo then
       plrToTP.Character.HumanoidRootPart.CFrame = plrToTPTo.Character.HumanoidRootPart.CFrame
       print('player has been successfully moved') --if this function works this will be outputted
           end
 
       end
 end

 
 commands.globalTp = fucntion(sender, arguments)
 print('TP function fired by '..sender.Name)


    for v, player in pairs(arguemtns) do
        print(playerName) -- the players name based on what command that they fired.
    end




    local nameOfPlayersBeingTeleported = arguemtns[2]
    local nameOfPlayersTeleportingThePlayers = arguments[1]

    if nameOfPlayersTeleportingThePlayers and nameOfPlayersBeingTeleported then
        local multiPlrTo = findPlayers(name, name) -- double params for the multiplayer



        if plrBeingTpd and plrTpThePlr then
            plrsTpThePlr.Character.HumanoidRootPart.CFrame = plrsBeingTPd.Character.HumanoidRootPart.CFrame
        end
    end
end


commands.globalTp = function(sender, arguments)
    print('tp function fired by '..sender.Name) -- done
end
--simple