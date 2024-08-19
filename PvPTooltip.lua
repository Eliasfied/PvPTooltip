print("Addon PvPTooltip from Broxis loaded! :)")

local addonName, ns = ...

local PvPModifiers = ns.modis


local function AddPvPModifierToTooltip(tooltip, spellID, class, spec)
    local classModifiers = PvPModifiers[class]
    if classModifiers then
        local specModifiers = classModifiers[spec]
        if specModifiers then
            local modifier = specModifiers[spellID]
            if modifier then
                if modifier < 1 then
                    tooltip:AddLine("PvP-Modifier: " .. modifier, 1, 0, 0) -- Rot
                elseif modifier > 1 then
                    tooltip:AddLine("PvP-Modifier: " .. modifier, 0, 1, 0) -- Grün
                end
                tooltip:Show()
            else
            end
        else
        end
    else
    end
end

local function OnTooltipSetSpell(tooltip, data)
    if tooltip == GameTooltip then
        local spellID = data.id
        local class = select(2, UnitClass("player"))
        local spec = select(2, GetSpecializationInfo(GetSpecialization()))
        if spellID and class and spec then
            AddPvPModifierToTooltip(tooltip, spellID, class, spec)
        end
    end
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Spell, OnTooltipSetSpell)

