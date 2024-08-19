local _, ns = ...

ns.foo = "Banana"

ns.modis = {
    ["DEATHKNIGHT"] = {
        ["Blood"] = {},
        ["Frost"] = {},
        ["Unholy"] = {}
    },
    ["DEMONHUNTER"] = {
        ["Havoc"] = {},
        ["Vengeance"] = {}
    },
    ["DRUID"] = {
        ["Balance"] = {

            --SPELLS
            [78674] = 1.2,  --Starsurge
            [202770] = 0.7, --Fury of Elune

            --TALENTS
            [279620] = 0.5  --Twin Moonfire
        },
        ["Feral"] = {},
        ["Guardian"] = {},
        ["Restoration"] = {}
    },
    ["EVOKER"] = {
        ["Devastation"] = {},
        ["Preservation"] = {},
        ["Augmentation"] = {}
    },
    ["HUNTER"] = {
        ["BeastMastery"] = {},
        ["Marksmanship"] = {},
        ["Survival"] = {}
    },
    ["MAGE"] = {
        ["Arcane"] = {},
        ["Fire"] = {},
        ["Frost"] = {}
    },
    ["MONK"] = {
        ["Brewmaster"] = {},
        ["Mistweaver"] = {},
        ["Windwalker"] = {}
    },
    ["PALADIN"] = {
        ["Holy"] = {},
        ["Protection"] = {},
        ["Retribution"] = {}
    },
    ["PRIEST"] = {
        ["Discipline"] = {},
        ["Holy"] = {},
        ["Shadow"] = {}
    },
    ["ROGUE"] = {
        ["Assassination"] = {},
        ["Outlaw"] = {},
        ["Subtlety"] = {}
    },
    ["SHAMAN"] = {
        ["Elemental"] = {},
        ["Enhancement"] = {},
        ["Restoration"] = {}
    },
    ["WARLOCK"] = {
        ["Affliction"] = {},
        ["Demonology"] = {},
        ["Destruction"] = {}
    },
    ["WARRIOR"] = {
        ["Arms"] = {},
        ["Fury"] = {},
        ["Protection"] = {}
    }
}
