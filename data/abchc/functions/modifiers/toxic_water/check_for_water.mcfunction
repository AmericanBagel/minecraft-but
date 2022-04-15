#> abchc:modifiers/toxic_water/check_for_water
# Remove player's out_of_water tag if player is in or standing above water
# @within abchc:modifiers/toxic_water/main
# @context player

#> Give player out of water tag
tag @s add abch.toxic_water.out_of_water

#> Remove tag if player is in water
execute if block ~ ~ ~ #abchc:water run tag @s remove abch.toxic_water.out_of_water
execute if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s remove abch.toxic_water.out_of_water

execute if block ~ ~1 ~ #abchc:water run tag @s remove abch.toxic_water.out_of_water
execute if block ~ ~1 ~ #aestd1:all[waterlogged=true] run tag @s remove abch.toxic_water.out_of_water

#> If player is in boat, add tag back
execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run function abchc:modifiers/toxic_water/boat_check

#> If it's raining, check if player has sky above
execute if score toxic_water.rain abch.config matches 1 unless entity @s[tag=!abch.toxic_water.out_of_water] unless score toxic_water.rain abch.config matches 0 if predicate abchc:raining if predicate is_sky:check_sky run function abchc:modifiers/toxic_water/rain