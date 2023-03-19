#> abchc:modifiers/toxic_water/boat_check
# Check if boat is below water or if water is above player's boat
tag @s add abch.toxic_water.out_of_water

execute if block ~ ~1.08 ~ #abchc:water run tag @s remove abch.toxic_water.out_of_water
execute if block ~ ~1.08 ~ #aestd1:all[waterlogged=true] run tag @s remove abch.toxic_water.out_of_water