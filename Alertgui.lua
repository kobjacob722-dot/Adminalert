local username, rankName = ...

-- Fallback text if no arguments are passed
username = username or "An Admin"
rankName = rankName or "Staff"

local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Reuse existing Alert ScreenGui if it already exists, otherwise create it
local Alert = PlayerGui:FindFirstChild("Alert")
if not Alert then
	Alert = Instance.new("ScreenGui")
	Alert.Name = "Alert"
	Alert.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Alert.DisplayOrder = 8
	Alert.ResetOnSpawn = false
	Alert.Parent = PlayerGui
end

-- Reuse existing Prompts frame if it already exists, otherwise create it
local Prompts = Alert:FindFirstChild("Prompts")
if not Prompts then
	Prompts = Instance.new("Frame")
	Prompts.Name = "Prompts"
	Prompts.AnchorPoint = Vector2.new(0.5, 0)
	Prompts.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Prompts.BackgroundTransparency = 1
	Prompts.BorderSizePixel = 0
	Prompts.Position = UDim2.new(0.5, 0, -3.132302879294002e-07, 0)
	Prompts.Size = UDim2.new(0.2, 0, 0.7890006303787231, 0)
	Prompts.ZIndex = 2
	Prompts.Parent = Alert

	local Layout = Instance.new("UIListLayout")
	Layout.FillDirection = Enum.FillDirection.Vertical
	Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	Layout.SortOrder = Enum.SortOrder.LayoutOrder
	Layout.Padding = UDim.new(0, 5)
	Layout.Parent = Prompts
end

-- Template Prompt (TextLabel serves as main container)
local Label = Instance.new("TextLabel")
Label.Name = "Label"
Label.AnchorPoint = Vector2.new(0.5, 0)
Label.BackgroundColor3 = Color3.fromRGB(255, 0, 200)
Label.BackgroundTransparency = 0.7
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0.5, 0, 0.739, 0)
Label.Size = UDim2.new(1, 0, 0.5, 0)
Label.ZIndex = 2
Label.Font = Enum.Font.SourceSansSemibold
Label.Text = ""
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 20
Label.TextWrapped = true
Label.TextXAlignment = Enum.TextXAlignment.Center
Label.TextYAlignment = Enum.TextYAlignment.Center
Label.ClipsDescendants = true
Label.Visible = false

local Border = Instance.new("Frame")
Border.Name = "Border"
Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Border.BackgroundTransparency = 1
Border.Size = UDim2.new(1, 0, 1, 0)
Border.ZIndex = 2
Border.Parent = Label

local Line = Instance.new("Frame")
Line.Name = "Line"
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 1, 1, 0)
Line.ZIndex = 3
Line.Parent = Border

local Line_2 = Instance.new("Frame")
Line_2.Name = "Line"
Line_2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_2.BorderSizePixel = 0
Line_2.Size = UDim2.new(1, 0, 0, 1)
Line_2.ZIndex = 3
Line_2.Parent = Border

local Line_3 = Instance.new("Frame")
Line_3.Name = "Line"
Line_3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_3.BorderSizePixel = 0
Line_3.Position = UDim2.new(1, -1, 0, 0)
Line_3.Size = UDim2.new(0, 1, 1, 0)
Line_3.ZIndex = 3
Line_3.Parent = Border

local Line_4 = Instance.new("Frame")
Line_4.Name = "Line"
Line_4.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Line_4.BorderSizePixel = 0
Line_4.Position = UDim2.new(0, 0, 1, -1)
Line_4.Size = UDim2.new(1, 0, 0, 1)
Line_4.ZIndex = 3
Line_4.Parent = Border

local Dot = Instance.new("Frame")
Dot.Name = "Dot"
Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot.BorderSizePixel = 0
Dot.Size = UDim2.new(0, 2, 0, 2)
Dot.ZIndex = 4
Dot.Parent = Border

local Dot_2 = Instance.new("Frame")
Dot_2.Name = "Dot"
Dot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_2.BorderSizePixel = 0
Dot_2.Position = UDim2.new(1, -2, 0, 0)
Dot_2.Size = UDim2.new(0, 2, 0, 2)
Dot_2.ZIndex = 4
Dot_2.Parent = Border

local Dot_3 = Instance.new("Frame")
Dot_3.Name = "Dot"
Dot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_3.BorderSizePixel = 0
Dot_3.Position = UDim2.new(1, -2, 1, -2)
Dot_3.Size = UDim2.new(0, 2, 0, 2)
Dot_3.ZIndex = 4
Dot_3.Parent = Border

local Dot_4 = Instance.new("Frame")
Dot_4.Name = "Dot"
Dot_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dot_4.BorderSizePixel = 0
Dot_4.Position = UDim2.new(0, 0, 1, -2)
Dot_4.Size = UDim2.new(0, 2, 0, 2)
Dot_4.ZIndex = 4
Dot_4.Parent = Border

-- Spawn individual prompt
local prompt = Label:Clone()
prompt.Text = string.format("%s (%s) is in your game.", username, rankName)
prompt.Visible = true
prompt.Parent = Prompts

local s = Instance.new("Sound")
s.Name = "Ping"
s.SoundId = "rbxassetid://6176997734"
s.Volume = 10
s.Looped = false
s.Archivable = false
s.Parent = workspace
s:Play()

task.delay(10, function()
	prompt:Destroy()
	s:Destroy()
end)
