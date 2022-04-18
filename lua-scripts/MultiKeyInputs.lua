--multi-key inputs.lua


 -- first one is for accessing settings
local UIS = game:GetService('UserInputService') -- this is for detecting input
local ctrlDown = false

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end --if you are typing in chat and you press the binds the game ignores it. 

    if input.KeyCode  == Enum.KeyCode.LeftCtrl then
        ctrlDown = true
    elseif input.KeyCode == Enum.KeyCode.Z then
        if not ctrlDown then return end -- if ctrl isn't being held down the game doesn't register
    end
end)

UIS.InputEnded:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.LeftCtrl then
    end
end)

--ctrl + z for settings ⬆

local shiftDown = false 

UIS.InputBegan:Connect(function(input, gameProcessedEvent) --this keybind set will introduce the shop which is leftshift + p 
    if gameProcessedEvent then return end 

    if input.KeyCode == Enum.KeyCode.LeftShift then
        shiftDown = true
    elseif input.KeyCode == Enum.KeyCode.P then
        if not shiftDown then return end 
    end
end)

UIS.InputEnded:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.LeftShift then
    end
end)

--leftshift (next to caps lock) + p  for shop

