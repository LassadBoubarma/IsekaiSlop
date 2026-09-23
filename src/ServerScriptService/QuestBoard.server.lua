local Players = game:GetService("Players")

local QUESTS = {
	{
		Name = "Goblin Hunt",
		Description = "Defeat 5 goblins in the forest",
		Reward = "100 Gold + XP"
	},
	{
		Name = "Lost Archer",
		Description = "Find the missing archer near the plains",
		Reward = "Rare Bow"
	}
}

local board = workspace:FindFirstChild("QuestBoard")

if not board then
	warn("QuestBoard model missing. Create a part/model named QuestBoard in Workspace.")
	return
end

local billboard = Instance.new("BillboardGui")
billboard.Name = "QuestBoardBillboard"
billboard.Adornee = board
billboard.Size = UDim2.fromScale(5, 3)
billboard.StudsOffset = Vector3.new(0, 3, 0)
billboard.AlwaysOnTop = true
billboard.Parent = board

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(1, 1)
frame.BackgroundTransparency = 0.15
frame.Parent = billboard

local text = Instance.new("TextLabel")
text.Size = UDim2.fromScale(1, 1)
text.BackgroundTransparency = 1
text.TextScaled = true
text.Font = Enum.Font.Fantasy
text.TextColor3 = Color3.new(1, 1, 1)
text.Text = "QUEST BOARD\n\n" .. QUESTS[1].Name .. "\n" .. QUESTS[1].Description .. "\nReward: " .. QUESTS[1].Reward
text.Parent = frame
