-- Script para verificar se o jogador possui a Game Pass específica

local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer -- Obtém o jogador local

-- ID da Game Pass que você deseja verificar
local gamePassId = 781741534 -- Substitua pelo ID real da Game Pass

-- Função para verificar a posse da Game Pass
local function checkGamePass()
    local hasGamePass = player:HasGamePass(gamePassId)
    print("Game Pass ID: " .. gamePassId .. " | Possui: " .. tostring(hasGamePass))
end

-- Chama a função para verificar a Game Pass
checkGamePass()
