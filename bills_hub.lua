local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local GrantFruitRemote = ReplicatedStorage:WaitForChild("GrantFruit")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- UI setup
local gui = Instance.new("ScreenGui", playerGui)
gui.Name = "FruitUI"

local fruits = {"Leopard", "Dragon", "Dough", "Flame", "Ice"}

for i, name in ipairs(fruits) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 200, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 10 + (i-1)*45)
    btn.Text = "Get " .. name
    btn.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Parent = gui

    btn.MouseButton1Click:Connect(function()
        GrantFruitRemote:FireServer(name)
    end)
end
print("Hello from GitHub!")
