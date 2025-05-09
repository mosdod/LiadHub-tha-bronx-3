-- LUA GOD BUNDLE: Loader + UI in ONE
local player = game.Players.LocalPlayer

local function showUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Name = "LiadUI"
    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    Frame.Size = UDim2.new(0, 300, 0, 200)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TextLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
    TextLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = "You have successfully logged in!"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextWrapped = true
end

local function promptKey()
    local ScreenGui = Instance.new("ScreenGui", player.PlayerGui)
    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 300, 0, 200)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

    local TextBox = Instance.new("TextBox", Frame)
    TextBox.Position = UDim2.new(0, 20, 0, 60)
    TextBox.Size = UDim2.new(0, 260, 0, 30)
    TextBox.PlaceholderText = "Enter your key"
    TextBox.Text = ""

    local Button = Instance.new("TextButton", Frame)
    Button.Position = UDim2.new(0, 100, 0, 120)
    Button.Size = UDim2.new(0, 100, 0, 30)
    Button.Text = "Submit"

    Button.MouseButton1Click:Connect(function()
        if TextBox.Text == "liad" then
            ScreenGui:Destroy()
            showUI()
        else
            TextBox.Text = "Invalid Key"
        end
    end)
end

promptKey()
