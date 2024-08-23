-- Script para listar todas as Game Passes do jogo

local function listGamePasses()
    local gamePasses = {} -- Tabela para armazenar as informações das Game Passes

    -- Função para adicionar informações de uma Game Pass à tabela
    local function addGamePass(id, name)
        table.insert(gamePasses, {Id = id, Name = name})
    end

    -- Recupera todas as Game Passes associadas ao jogo
    local success, result = pcall(function()
        return game:GetService("Players"):GetGamePasses()
    end)

    if success then
        for _, gamePass in ipairs(result) do
            addGamePass(gamePass.Id, gamePass.Name)
        end

        -- Imprime as Game Passes no console
        print("Game Passes no jogo:")
        for _, pass in ipairs(gamePasses) do
            print("ID: " .. pass.Id .. ", Nome: " .. pass.Name)
        end
    else
        warn("Não foi possível obter as Game Passes. Erro: " .. result)
    end
end

-- Chama a função para listar as Game Passes
listGamePasses()
