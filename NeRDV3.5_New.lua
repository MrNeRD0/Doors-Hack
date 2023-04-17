
-- create a ScreenGui object
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui
-- create a TextLabel object
local label = Instance.new("TextLabel")
label.Text = "Visit The Nerd Channel For The Latest Updates"
label.Size = UDim2.new(0.8, 0, 0.8, 0) -- set the size to be 80% of the screen size
label.Position = UDim2.new(0.1, 0, 0.1, 0) -- set the position to be 10% from the top and left
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.FontSize = Enum.FontSize.Size36 -- set the font size to 36
label.TextWrapped = true -- allow the text to wrap if it's too long
label.TextScaled = true -- scale the text to fit the label
label.Parent = screenGui
