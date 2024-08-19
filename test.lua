print("Hello World! Das Addon wurde geladen.")

-- Fügen Sie einen Befehl hinzu, um den Hook manuell zu testen
SLASH_TESTHOOK1 = "/testhook"

-- local function AddPvPModifierToTooltip(tooltip, spellID)
--     -- Definiere eine Tabelle mit PvP-Modifikatoren
--     local pvpModifiers = {
--         [78674] = 1.2,
--         [202770] = 0.7
--     }

--     -- Prüfe, ob der Zauber einen PvP-Modifier hat
--     local modifier = pvpModifiers[spellID]
--     if modifier then
--         tooltip:AddLine("PvP-Modifier: " .. modifier)
--         tooltip:Show()
--     end
-- end

local function testTooltip(tooltip)
    tooltip:AddLine("es klappt!")
    tooltip:Show()
end

-- Überprüfen, ob GameTooltip definiert ist
if GameTooltip then
    print("GameTooltip ist definiert.")
else
    print("GameTooltip ist nicht definiert.")
end

-- Hook in den Tooltip für Zauber ein
GameTooltip:HookScript("OnTooltipSetSpell", function(self)
    print("OnTooltipSetSpell event triggered!")
    testTooltip(self)
    local name, spellID = self:GetSpell()
    if spellID then
        print("Spell ID gefunden: " .. spellID)
        -- AddPvPModifierToTooltip(self, spellID)
    else
        print("Kein spellID gefunden.")
    end
end)


-- Testen Sie das Hook-Skript manuell
local function TestHook()
    print("Manueller Test des Hooks")
    local tooltip = GameTooltip
    tooltip:SetOwner(UIParent, "ANCHOR_NONE")
    tooltip:SetSpellByID(78674) -- Beispiel-Spell ID
    tooltip:Show()
end

SlashCmdList["TESTHOOK"] = TestHook

print("Slash-Befehl /testhook registriert.")