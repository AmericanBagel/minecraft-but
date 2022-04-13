#> abchc:modifiers/toxic_water/check_for_water
# Remove player's out_of_water tag if player is in or standing above water
# @within abchc:modifiers/toxic_water/main
# @context player

#> Remove tag if player is on water
execute if block ~ ~ ~ #abchc:water run tag @s remove abch.toxic_water.out_of_water
execute if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s remove abch.toxic_water.out_of_water

execute if block ~ ~1 ~ #abchc:water run tag @s remove abch.toxic_water.out_of_water
execute if block ~ ~1 ~ #aestd1:all[waterlogged=true] run tag @s remove abch.toxic_water.out_of_water

#> If player is in boat, add tag back
execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run function abchc:modifiers/toxic_water/boat_check

#> If it's raining, check if player has sky above
execute if predicate abchc:raining run function abchc:modifiers/toxic_water/rain/start

## Check if player is standing on boat
#execute store result score $y abch.toxic_water run data get entity @s Pos[1] 10000
#scoreboard players operation $y abch.toxic_water %= #10000 abch.math
#execute if score $y abch.toxic_water matches 857 run tag @s add abch.toxic_water.out_of_water