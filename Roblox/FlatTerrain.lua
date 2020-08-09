local toolbar = plugin:CreateToolbar("Flat Terrain Creator")
local newScriptButton = toolbar:createButton("Create Flat Terrain", "Create a flat terrain", "rbxassetid://1507949215")
local changeHistoryService = game:GetService("ChangeHistoryService")

function CreateFlatTerrain()

	game.Workspace.Terrain:SetCells(
		Region3int16.new(
			Vector3int16.new(-127, 0, -127),
			Vector3int16.new(128, 1, 128)
		),
		"Grass",
		"Solid",
		"X"
	)

	changeHistoryService:SetWayPoint("FlatTerrain")

end

function ButtonClicked()
	CreateFlatTerrain()
end


newScriptButton.Click:connect(ButtonClicked)