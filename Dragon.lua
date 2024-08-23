-- Função para criar e posicionar uma esfera representando a Dragon Fruit
local function spawnDragonFruit()
    local newFruit = Instance.new("Part")
    newFruit.Size = Vector3.new(2, 2, 2)  -- Tamanho da esfera
    newFruit.Shape = Enum.PartType.Ball
    newFruit.BrickColor = BrickColor.new("Bright red")  -- Cor da esfera
    newFruit.Material = Enum.Material.SmoothPlastic
    newFruit.Position = Vector3.new(
        math.random(-50, 50),  -- Ajuste esses valores conforme necessário
        50,  -- Altura inicial para a chuva de frutas
        math.random(-50, 50)   -- Ajuste esses valores conforme necessário
    )
    newFruit.Anchored = false  -- Deixe o objeto não ancorado para que ele caia
    newFruit.Parent = workspace
end

-- Configurar a frequência de chuva de Dragon Fruits (em segundos)
local spawnInterval = 1

while true do
    spawnDragonFruit()
    wait(spawnInterval)
end
