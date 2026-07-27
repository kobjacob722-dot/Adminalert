-- Instances
local Success = Instance.new("ScreenGui")
local SuccessTextPrompt = Instance.new("Frame")
local SuccessLabel = Instance.new("TextLabel")
local SuccessBorder = Instance.new("Frame")
local SuccessLine = Instance.new("Frame")
local SuccessLine_2 = Instance.new("Frame")
local SuccessLine_3 = Instance.new("Frame")
local SuccessLine_4 = Instance.new("Frame")
local SuccessDot = Instance.new("Frame")
local SuccessDot_2 = Instance.new("Frame")
local SuccessDot_3 = Instance.new("Frame")
local SuccessDot_4 = Instance.new("Frame")

-- ScreenGui Setup
Success.Name = "Success"
Success.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Success.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Success.DisplayOrder = 8
Success.ResetOnSpawn = false

-- Text Prompt Container
SuccessTextPrompt.Name = "TextPrompt"
SuccessTextPrompt.Parent = Success
SuccessTextPrompt.AnchorPoint = Vector2.new(0.5, 0)
SuccessTextPrompt.BackgroundColor3 = Color3.fromRGB(0, 107, 1)
SuccessTextPrompt.BackgroundTransparency = 0.800
SuccessTextPrompt.BorderColor3 = Color3.fromRGB(27, 42, 53)
SuccessTextPrompt.BorderSizePixel = 0
SuccessTextPrompt.Position = UDim2.new(0.500261843, 0, 0.739123046, 0)
SuccessTextPrompt.Size = UDim2.new(0.129753798, 0, 0.0378565826, 0)
SuccessTextPrompt.ZIndex = 2

-- Centered Text Label
SuccessLabel.Name = "Label"
SuccessLabel.Parent = SuccessTextPrompt
SuccessLabel.AnchorPoint = Vector2.new(0.5, 0.5)
SuccessLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessLabel.BackgroundTransparency = 1.000
SuccessLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
SuccessLabel.Size = UDim2.new(1, 0, 1, 0)
SuccessLabel.ZIndex = 3
SuccessLabel.Font = Enum.Font.SourceSansSemibold
SuccessLabel.Text = "All Scripts Loaded Successfully"
SuccessLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SuccessLabel.TextSize = 20.000
SuccessLabel.TextWrapped = true
SuccessLabel.TextXAlignment = Enum.TextXAlignment.Center
SuccessLabel.TextYAlignment = Enum.TextYAlignment.Center
SuccessLabel.ClipsDescendants = true

-- Border & Framing
SuccessBorder.Name = "Border"
SuccessBorder.Parent = SuccessTextPrompt
SuccessBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessBorder.BackgroundTransparency = 1.000
SuccessBorder.Size = UDim2.new(1, 0, 1, 0)
SuccessBorder.ZIndex = 2

SuccessLine.Name = "Line"
SuccessLine.Parent = SuccessBorder
SuccessLine.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SuccessLine.BorderSizePixel = 0
SuccessLine.Size = UDim2.new(0, 1, 1, 0)
SuccessLine.ZIndex = 3

SuccessLine_2.Name = "Line"
SuccessLine_2.Parent = SuccessBorder
SuccessLine_2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SuccessLine_2.BorderSizePixel = 0
SuccessLine_2.Size = UDim2.new(1, 0, 0, 1)
SuccessLine_2.ZIndex = 3

SuccessLine_3.Name = "Line"
SuccessLine_3.Parent = SuccessBorder
SuccessLine_3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SuccessLine_3.BorderSizePixel = 0
SuccessLine_3.Position = UDim2.new(1, -1, 0, 0)
SuccessLine_3.Size = UDim2.new(0, 1, 1, 0)
SuccessLine_3.ZIndex = 3

SuccessLine_4.Name = "Line"
SuccessLine_4.Parent = SuccessBorder
SuccessLine_4.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SuccessLine_4.BorderSizePixel = 0
SuccessLine_4.Position = UDim2.new(0, 0, 1, -1)
SuccessLine_4.Size = UDim2.new(1, 0, 0, 1)
SuccessLine_4.ZIndex = 3

SuccessDot.Name = "Dot"
SuccessDot.Parent = SuccessBorder
SuccessDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessDot.BorderSizePixel = 0
SuccessDot.Size = UDim2.new(0, 2, 0, 2)
SuccessDot.ZIndex = 4

SuccessDot_2.Name = "Dot"
SuccessDot_2.Parent = SuccessBorder
SuccessDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessDot_2.BorderSizePixel = 0
SuccessDot_2.Position = UDim2.new(1, -2, 0, 0)
SuccessDot_2.Size = UDim2.new(0, 2, 0, 2)
SuccessDot_2.ZIndex = 4

SuccessDot_3.Name = "Dot"
SuccessDot_3.Parent = SuccessBorder
SuccessDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessDot_3.BorderSizePixel = 0
SuccessDot_3.Position = UDim2.new(1, -2, 1, -2)
SuccessDot_3.Size = UDim2.new(0, 2, 0, 2)
SuccessDot_3.ZIndex = 4

SuccessDot_4.Name = "Dot"
SuccessDot_4.Parent = SuccessBorder
SuccessDot_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuccessDot_4.BorderSizePixel = 0
SuccessDot_4.Position = UDim2.new(0, 0, 1, -2)
SuccessDot_4.Size = UDim2.new(0, 2, 0, 2)
SuccessDot_4.ZIndex = 4

-- Sound Execution
local s = Instance.new("Sound")
s.Name = "Ping"
s.SoundId = "rbxassetid://255881176"
s.Volume = 10
s.Looped = false
s.Archivable = false
s.PlaybackSpeed = 1.5
s.Parent = workspace
s:Play()

-- Timed Cleanup
task.delay(5, function()
	Success:Destroy()
	s:Destroy()
end)
