#> minecraft_but.coreraft_but.core:modifiers/toxic_water/boat_check
# Check if boat is below water or if water is above player's boat
tag @s add minecraft_but.toxic_water.out_of_water

execute if block ~ ~1.08 ~ #minecraft_but.coreraft_but.core:water run tag @s remove minecraft_but.toxic_water.out_of_water
execute if block ~ ~1.08 ~ #aestd1:all[waterlogged=true] run tag @s remove minecraft_but.toxic_water.out_of_water