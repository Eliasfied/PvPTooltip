print("Hello World! Das Addon wurde geladen.")

SLASH_TESTHOOK1 = "/testhook"

local function AddPvPModifierToTooltip(tooltip, spellID)
    local pvpModifiers = {
        [78674] = 1.2,
        [202770] = 0.7
    }

    local modifier = pvpModifiers[spellID]
    if modifier then
        
        if modifier < 1 then
            local line = tooltip:AddLine("PvP-Modifier: " .. modifier, 1,0,0)
        elseif modifier > 1 then
            local line = tooltip:AddLine("PvP-Modifier: " .. modifier, 0,1,0)
        end
        tooltip:Show()
    end
end



local function OnTooltipSetSpell(tooltip, data)
    if tooltip == GameTooltip then
        local spellID = data.id
        if spellID then
            AddPvPModifierToTooltip(tooltip, spellID)
        end
    end
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Spell, OnTooltipSetSpell)


