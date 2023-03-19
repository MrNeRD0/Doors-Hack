-- create a ScreenGui to hold the label
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- create a TextLabel to display the text
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0) -- fill the entire screen
textLabel.Text = "Please Check The Nerd Channel For Last Update(link)"
textLabel.FontSize = Enum.FontSize.Size36 -- set the font size to be large
textLabel.TextColor3 = Color3.new(1, 1, 1) -- set the text color to white
textLabel.BackgroundTransparency = 1 -- make the background transparent
textLabel.Parent = screenGui
