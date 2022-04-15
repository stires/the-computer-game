--currency system.

local currencySystem = Instance.new('Script', game.workspace.ServerScriptService)

local dss = game:GetService("DataStoreService")
 
local ds = dss:GetDataStore("data")
 
 
function saveData(plr)
    
    
    local cash = plr.leaderstats.Cash.Value
 
    pcall(function()
 
        ds:SetAsync(plr.UserId .. "-Cash", cash)
    end)
end
 
 
 
game.Players.PlayerAdded:Connect(function(plr)
    
    
    local ls = Instance.new("Folder")
    ls.Name = "leaderstats"
    ls.Parent = plr
    
    local cash = Instance.new("IntValue")
    cash.Name = "Cash"
    cash.Parent = ls
    
    
    local data = nil
    
    pcall(function()
        
        data = ds:GetAsync(plr.UserId .. "-Cash")
    end)
    
    cash.Value = data or 0
end)
 
 
game.Players.PlayerRemoving:Connect(saveData)
 
game:BindToClose(function()
    
    
    for i, plr in pairs(game.Players:GetPlayers()) do
        
        saveData(plr)
    end
end)

--not much too it actually
