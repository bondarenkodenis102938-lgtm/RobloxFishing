-- TreeDatabase
-- Shared configuration for tree species.
-- This ModuleScript stores data only; tree behavior will live in separate modules.

local TreeDatabase = {}

TreeDatabase.Species = {
    Pine = {
        Name = "Pine",
        DisplayName = "Сосна",
        WoodType = "Softwood",

        -- Growth
        NormalHeight = 10, -- meters
        GrowthChances = {
            20, -- 10 -> 11 m
            15, -- 11 -> 12 m
            10, -- 12 -> 13 m
            5,  -- 13 -> 14 m
            4,  -- 14 -> 15 m
            3,  -- 15 -> 16 m
            2,  -- 16 -> 17 m
            1,  -- 17 -> 18 m
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
