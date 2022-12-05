-- EBUI IS NOT FUNCTIONAL IN THIS RELEASE.

--[[
█▀▀ █▄▄ █ █ █ █
██▄ █▄█ █▄█ █ ▄ 脚本 0.1 2022
]]

local debugEnabled = true

if debugEnabled == true then
    warn("Debug is enabled.")
else
    warn("Debug is not enabled.")
end

local function PrintDebug(string)
    if debugEnabled == true then
        print(string)
    end
end

PrintDebug("Starting ebui!脚本 0.1 2022")

-- SERVICES --
PrintDebug("Start SERVICES")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

PrintDebug("End SERVICES")

-- SETTINGS --
PrintDebug("Start SETTINGS")
local Theme = "UICC_Dark"
local TweenTimeSeconds = 1

PrintDebug("End SETTINGS")

-- VARIABLES --
PrintDebug("Start VARIABLES")
local Player = Players.LocalPlayer

PrintDebug("End VARIABLES")

-- COLORS --
PrintDebug("Start COLORS")
local Color3_White = Color3.fromRGB(255,255,255)
local Color3_Black = Color3.fromRGB(0,0,0)
local Color3_DarkAccent = Color3.fromRGB(16, 17, 26)
local Color3_LightAccent = Color3.fromRGB(23, 24, 38)
local Color3_Valid = Color3.fromRGB(113, 227, 146)
local Color3_Invalid = Color3.fromRGB(227, 126, 113)

PrintDebug("End COLORS")

-- UI SETUP - ESSENTIALS --
PrintDebug("Start UI SETUP - ESSENTIALS")

local MainGUI = Instance.new("ScreenGui")
MainGUI.IgnoreGuiInset = true
MainGUI.Name = "ebui!脚本 1.0"

local MainTabFrame = Instance.new("Frame") -- Tab that contains all UI elements for easy tweening
MainTabFrame.Name = "MainTab"
MainTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainTabFrame.Size = UDim2.new(0.45, 0, 0.6, 0)
MainTabFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainTabFrame.BackgroundColor3 = Color3_DarkAccent
MainTabFrame.Parent = MainGUI

local FrameTitleText = Instance.new("TextLabel")
FrameTitleText.Name = "Title"
FrameTitleText.Text = "ebui!脚本 0.1"
FrameTitleText.Font = Enum.Font.Highway
FrameTitleText.TextXAlignment = "Left"
FrameTitleText.TextYAlignment = "Center"
FrameTitleText.AnchorPoint = Vector2.new(0.5, 0)
FrameTitleText.Size = UDim2.new(0.5, 0, 1, 0)
FrameTitleText.Position = UDim2.new(0.5, 0, 0, 0)
FrameTitleText.BackgroundTransparency = 1
FrameTitleText.TextColor3 = Color3_White
FrameTitleText.Parent = MainTabFrame

local MainFrame = Instance.new("Frame") -- Every interactable is child to this
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(1, 0, 0.875, 0)
MainFrame.Position = UDim2.new(0, 0, 0.125, 0)
MainFrame.BackgroundColor3 = Color3_LightAccent
MainFrame.Parent = MainTabFrame

local ScrollingTabFrame = Instance.new("ScrollingFrame")
ScrollingTabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingTabFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
ScrollingTabFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
ScrollingTabFrame.BackgroundColor3 = Color3_DarkAccent
ScrollingTabFrame.BackgroundTransparency = 0.5
ScrollingTabFrame.Parent = MainFrame

local TestButton = Instance.new("TextButton") -- Debug
TestButton.Name = "TestButton"
TestButton.AnchorPoint = Vector2.new(0.5, 0.5)
TestButton.Size = UDim2.new(0.5, 0, 0.5, 0)
TestButton.Position = UDim2.new(0.5, 0, 0.05, 0)
TestButton.BackgroundColor3 = Color3_Valid
TestButton.Parent = ScrollingTabFrame

PrintDebug("End UI SETUP - ESSENTIALS")

-- UI SETUP - COSMETICS --
PrintDebug("Start UI SETUP - COSMETICS")
local MainTabFrame_UICorner = Instance.new("UICorner")
MainTabFrame_UICorner.CornerRadius = UDim.new(0.06, 0)
MainTabFrame_UICorner.Parent = MainTabFrame

local ScrollingTabFrame_UICorner = Instance.new("UICorner")
ScrollingTabFrame_UICorner.CornerRadius = UDim.new(0.06, 0)
ScrollingTabFrame_UICorner.Parent = ScrollingTabFrame

local ScrollingTabFrame_UIGradient = Instance.new("UIGradient")
ScrollingTabFrame_UIGradient.Rotation = 90
ScrollingTabFrame_UIGradient.Transparency = NumberSequence.new(NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0.5))
ScrollingTabFrame_UIGradient.Color = Color3_White
ScrollingTabFrame_UIGradient.Parent = ScrollingTabFrame

PrintDebug("End UI SETUP - ESSENTIALS")

-- UI SETUP - INITIALIZATION --
PrintDebug("Start UI SETUP - INITIALIZATION")
MainGUI.Parent = Player.PlayerGui

PrintDebug("End UI SETUP - INITIALIZATION")

-- FUNCTIONS --
PrintDebug("Start FUNCTIONS")
local function OnTestButtonClicked()
    PrintDebug("Button clicked")
end

PrintDebug("End FUNCTIONS")

-- EVENTS --
PrintDebug("Start EVENTS")
TestButton.MouseButton1Click:Connect(OnTestButtonClicked)

PrintDebug("End EVENTS")