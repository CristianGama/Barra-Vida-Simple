local vidaGUI = script.Parent

local texto = vidaGUI.Parent:WaitForChild("Cant")
local barra = vidaGUI.Parent:WaitForChild("Vida")

local Persona = game.Players.LocalPlayer.Character

local humanoid = Persona:WaitForChild("Humanoid")

local cantidad = vidaGUI.Cantidad.Value

humanoid.HealthChanged:Connect(function(DanoCausado)
	barra.Size=UDim2.new(DanoCausado/humanoid.MaxHealth,0,1,0)
end)


while wait() do
	cantidad = humanoid.Health
	texto.Text = math.floor(cantidad)
end
