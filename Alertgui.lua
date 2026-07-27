local username, rankName = ...

-- Fallback text if no arguments are passed
username = username or "An Admin"
rankName = rankName or "Staff"

local Alert = Instance.new("ScreenGui")
local Label = Instance.new("TextLabel")
local TextPrompt = Instance.new("Frame")
local Border = Instance.new("Frame")
local Line = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Line_3 = Instance.new("Frame")
local Line_4 = Instance.new("Frame")
local Dot = Instance.new("Frame")
local Dot_2 = Instance.new("Frame")
local Dot_3 = Instance.new("Frame")
local Dot_4 = Instance.new("Frame")

Alert.Name = "Alert"
Alert.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Alert.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Alert.DisplayOrder = 8
Alert.ResetOnSpawn = false

Label.Name = "Label"
Label.Parent = TextPrompt
Label.AnchorPoint = Vector2.new(0.5, 0.5)
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(0.5, 0, 0.5, 0)
Label.Size = UDim2.new(1, 0, 1, 0)
Label.ZIndex = 3
Label.Font = Enum.Font.SourceSansSemibold
Label.Text = string.format("%s (%s) is in your game.", username, rankName)
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 20.000
Label.TextWrapped = true
Label.TextYAlignment = Enum.TextYAlignment.Center
Label.ClipsDescendants = true

TextPrompt.Name = "TextPrompt"
TextPrompt.Parent = Alert
TextPrompt.AnchorPoint = Vector2.new(0.5, 0)
TextPrompt.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextPrompt.BackgroundTransparency = 0.7
TextPrompt.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextPrompt.BorderSizePixel = 0
TextPrompt.Position = UDim2.new(0.5, 0, 0.739, 0)
TextPrompt.Size = UDim2.new(0.2, 0, 0.05, 0)
TextPrompt.ZIndex = 2

Border.Name = "Border"
Border.Parent = TextPrompt
Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Border.BackgroundTransparency = 1.000
Border.Size = UDim2.new(1, 0, 1, 0)
Border.ZIndex = 2

Line.Name = "Line"
Line.Parent = Border
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 1, 1, 0)
Line.ZIndex = 3

Line_2.Name = "Line"
Line_2.Parent = Border
Line_2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_2.BorderSizePixel = 0
Line_2.Size = UDim2.new(1, 0, 0, 1)
Line_2.ZIndex = 3

Line_3.Name = "Line"
Line_3.Parent = Border
Line_3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_3.BorderSizePixel = 0
Line_3.Position = UDim2.new(1, -1, 0, 0)
Line_3.Size = UDim2.new(0, 1, 1, 0)
Line_3.ZIndex = 3

Line_4.Name = "Line"
Line_4.Parent = Border
Line_4.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_4.BorderSizePixel = 0
Line_4.Position = UDim2.new(0, 0, 1, -1)
Line_4.Size = UDim2.new(1, 0, 0, 1)
Line_4.ZIndex = 3

Dot.Name = "Dot"
Dot.Parent = Border
Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot.BorderSizePixel = 0
Dot.Size = UDim2.new(0, 2, 0, 2)
Dot.ZIndex = 4

Dot_2.Name = "Dot"
Dot_2.Parent = Border
Dot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_2.BorderSizePixel = 0
Dot_2.Position = UDim2.new(1, -2, 0, 0)
Dot_2.Size = UDim2.new(0, 2, 0, 2)
Dot_2.ZIndex = 4

Dot_3.Name = "Dot"
Dot_3.Parent = Border
Dot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_3.BorderSizePixel = 0
Dot_3.Position = UDim2.new(1, -2, 1, -2)
Dot_3.Size = UDim2.new(0, 2, 0, 2)
Dot_3.ZIndex = 4

Dot_4.Name = "Dot"
Dot_4.Parent = Border
Dot_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_4.BorderSizePixel = 0
Dot_4.Position = UDim2.new(0, 0, 1, -2)
Dot_4.Size = UDim2.new(0, 2, 0, 2)
Dot_4.ZIndex = 4

local s = Instance.new("Sound")
s.Name = "Ping"
s.SoundId = "rbxassetid://6176997734"
s.Volume = 10
s.Looped = false
s.Archivable = false
s.Parent = workspace
s:Play()

task.delay(10, function()
	Alert:Destroy()
	s:Destroy()
end)
