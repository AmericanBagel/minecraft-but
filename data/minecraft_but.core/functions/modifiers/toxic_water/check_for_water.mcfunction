#> minecraft_but.core:modifiers/toxic_water/check_for_water
# Remove player's out_of_water tag if player is in or standing above water
# @within minecraft_but.core:modifiers/toxic_water/main
# @context player

#> Give player out of water tag
tag @s add minecraft_but.toxic_water.out_of_water

#> Remove tag if player is in water
execute if block ~ ~ ~ #minecraft_but.core:water run tag @s remove minecraft_but.toxic_water.out_of_water
execute if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s remove minecraft_but.toxic_water.out_of_water

execute if block ~ ~1 ~ #minecraft_but.core:water run tag @s remove minecraft_but.toxic_water.out_of_water
execute if block ~ ~1 ~ #aestd1:all[waterlogged=true] run tag @s remove minecraft_but.toxic_water.out_of_water

#> If player is in boat, add tag back
execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run function minecraft_but.core:modifiers/toxic_water/boat_check

#> If it's raining, check if player has sky above
execute if score toxic_water.rain minecraft_but.config matches 1 unless entity @s[tag=!minecraft_but.toxic_water.out_of_water] unless score toxic_water.rain minecraft_but.config matches 0 if predicate minecraft_but.core:raining if predicate is_sky:check_sky run function minecraft_but.core:modifiers/toxic_water/rain