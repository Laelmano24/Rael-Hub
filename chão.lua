-- Função para criar o mini chão e as barreiras
local function Criarchao(position)
    -- Cria o mini chão
    local part = Instance.new("Part")
    part.Size = Vector3.new(10, 1, 10) -- Define o tamanho do mini chão (quadrado)
    part.Position = position -- Define a posição do mini chão
    part.Anchored = true -- Faz o mini chão ficar parado no lugar
    part.BrickColor = BrickColor.new("Bright green") -- Define a cor do mini chão
    part.Parent = game.Workspace

    -- Função para criar uma barreira
    local function createBarrier(position, size)
        local barrier = Instance.new("Part")
        barrier.Size = size
        barrier.Position = position
        barrier.Anchored = true
        barrier.CanCollide = true
        barrier.Transparency = 1 -- Define a barreira como totalmente transparente
        barrier.BrickColor = BrickColor.new("Bright blue")
        barrier.Parent = game.Workspace
    end

    -- Tamanho das barreiras
    local barrierThickness = 1
    local barrierHeight = 10

    -- Posições das barreiras ao redor do mini chão
    local barrierPositions = {
        Vector3.new(part.Position.X, part.Position.Y + barrierHeight / 2, part.Position.Z - part.Size.Z / 2 - barrierThickness / 2), -- Frente
        Vector3.new(part.Position.X, part.Position.Y + barrierHeight / 2, part.Position.Z + part.Size.Z / 2 + barrierThickness / 2), -- Trás
        Vector3.new(part.Position.X - part.Size.X / 2 - barrierThickness / 2, part.Position.Y + barrierHeight / 2, part.Position.Z), -- Esquerda
        Vector3.new(part.Position.X + part.Size.X / 2 + barrierThickness / 2, part.Position.Y + barrierHeight / 2, part.Position.Z), -- Direita
    }

    -- Cria as barreiras
    for _, pos in ipairs(barrierPositions) do
        if pos.Z == part.Position.Z then
            createBarrier(pos, Vector3.new(barrierThickness, barrierHeight, part.Size.Z)) -- Barreiras laterais
        else
            createBarrier(pos, Vector3.new(part.Size.X, barrierHeight, barrierThickness)) -- Barreiras frente e trás
        end
    end
end

-- Chama a função com a posição desejada
Criarchao(Vector3.new(38.51676940917969, 46.71601867675781, -78.49205017089844))