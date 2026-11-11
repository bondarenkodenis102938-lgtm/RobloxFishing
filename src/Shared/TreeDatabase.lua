-- TreeDatabase
-- Shared configuration for tree species.
-- This ModuleScript stores species data only; behavior lives in separate modules.

local TreeDatabase = {}

TreeDatabase.Species = {
    Pine = {
        Name = "Pine",
        DisplayName = "Сосна",
        WoodType = "Softwood",

        -- Growth settings (proposal; tune after visual testing)
        -- Heights are fractional meters. Do not round these values in gameplay calculations.
        TypicalHeight = {
            Min = 8.0, -- meters
            Max = 12.0, -- meters
            Center = 10.0, -- target average
            RandomSamples = 3, -- averaging samples concentrates results near Center
        },

        ExceptionalGrowth = {
            FirstStepChance = 3, -- percent chance for the first extra growth step
            ChanceMultiplier = 0.5, -- each following step has half the previous chance
            HeightStep = 0.5, -- fractional meters per successful check
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
