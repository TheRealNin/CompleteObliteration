
function Team:GetHasActivePlayers()

    local hasActivePlayers = false
    local currentTeam = self

    local function HasActivePlayers(player)
        if player:GetIsAlive() and not (player:GetIsCommander() and player:GetClient():GetIsVirtual()) then
            hasActivePlayers = true
            return false
        end
    end

    self:ForEachPlayer(HasActivePlayers)
    return hasActivePlayers

end