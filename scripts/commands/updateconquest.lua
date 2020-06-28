---------------------------------------------------------------------------------------------------
-- func: updateconquest
-- desc: Updates all conquest guard. (Need modify in db first.)
---------------------------------------------------------------------------------------------------

require("scripts/globals/conquest")
require("scripts/globals/commands")

cmdprops =
{
    permission = 4,
    parameters = "i"
}

function onTrigger(caller, entity, updatetype)
    local usage = "!updateconquest <type>"

    if (updatetype == nil or updatetype < 0 or updatetype > 2) then
        tpz.commands.error(caller, entity, "Invalid update type.", usage)
        tpz.commands.print(caller, entity, "Type: 0 = Conquest_Tally_Start, 1 = Conquest_Tally_End, 2 = Conquest_Update")
        return
    end

    WeekUpdateConquest(updatetype)
end
