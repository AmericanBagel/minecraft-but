execute if score difficulty.toxic_water abch.config matches 0 run function abchc:modifiers/toxic_water/peaceful
execute if score difficulty.toxic_water abch.config matches 1 run function abchc:modifiers/toxic_water/easy
execute unless score difficulty.toxic_water abch.config matches ..1 unless score difficulty.toxic_water abch.config matches 3.. run function abchc:modifiers/toxic_water/normal
execute if score difficulty.toxic_water abch.config matches 3 run function abchc:modifiers/toxic_water/hard