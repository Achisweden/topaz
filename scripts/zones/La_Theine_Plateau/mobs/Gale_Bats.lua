-----------------------------------
-- Area: La Theine Plateau
--  Mob: Gale Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 71, 1, tpz.regime.type.FIELDS)
end;
