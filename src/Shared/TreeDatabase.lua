-- TreeDatabase
-- Shared configuration for tree species.
-- This ModuleScript stores species data only; behavior lives in separate modules.

local TreeDatabase = {}

TreeDatabase.Species = {
    Pine = {
        Name = "Pine",
        DisplayName = "Сосна",
        WoodType = "Softwood",

        -- Growth settings (current proposal; tune after visual testing)
        TypicalHeight = {
            Min = 8, -- meters
            Max = 12, -- meters
            Center = 10, -- target average
            RandomSamples = 3, -- averaging samples concentrates results near Center
        },

        ExceptionalGrowth = {
            FirstStepChance = 3, -- percent chance to gain the first extra meter
            ChanceMultiplier = 0.5, -- each following step has half the previous chance
            HeightStep = 1, -- meters per successful check
        },

        -- Wood properties
        TrunkShape = "Cylinder",
        HardnessMultiplier = 0.80,
        BaseHealthPerCubicMeter = 50,

        -- Individual tree moisture uses a game scale from 0 to 100.
        Moisture = {
            Min = 0,
            Max = 100,
            MaxDamageReduction = 0.20,
        },
    },
}

return TreeDatabase
