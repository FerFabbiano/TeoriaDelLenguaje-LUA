local toolbar = plugin:CreateToolbar("CreatePart")
local button = toolbar:CreateButton("Crear Parte Nueva", "Crea una parte nueva.", " ")
local history = game:GetService("ChangeHistoryService")

local function createPart()
	local part = Instance.new("Fire")
	part.Parent = workspace
	part.Position = Vector3.new(0,25,0)
	history:SetWayPoint("Parte nueva creada")
end

button.Click:Connect(createPart)
