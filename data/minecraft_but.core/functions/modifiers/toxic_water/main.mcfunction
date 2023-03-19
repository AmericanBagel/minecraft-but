#> minecraft_but.coreraft_but.core:modifiers/toxic_water/main
# Main function for "toxic_water" modifier
# Kill players who are out of water
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root

#> Remove tag applied in previous tick
tag @a remove minecraft_but.toxic_water.out_of_water
tag @a remove minecraft_but.toxic_water.rain

#> Add in water tag if player is in water (or waterlogged block)
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator ] aminecraft_but.corerun function minecraft_but.core:modifiers/toxic_water/check_for_water

#> If player is in water, give effects
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=!minecraft_but.toxic_water.out_ofminecraft_but.corer] at @s run function minecraft_but.core:modifiers/toxic_water/in_water

#> If player is in rain, give effects
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=minecraft_but.toxic_water.rain] at @s if score toxic_water.rain minecrafminecraft_but.core.config matches 1 run function minecraft_but.core:modifiers/toxic_water/in_rain

#> If player is out of water, clear effects applied if player was outside water
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=minecraft_but.toxic_water.out_of_water, tag=!minecraft_but.tominecraft_but.coreater.rain ] at @s run function minecraft_but.core:modifiers/toxic_water/out_of_water