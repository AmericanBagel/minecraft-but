#> abchc:modifiers/toxic_water/main
# Main function for "toxic_water" modifier
# Kill players who are out of water
# @within abchc:modifiers/directory
# @context root

#> Remove tag applied in previous tick
tag @a remove abch.toxic_water.out_of_water
tag @a remove abch.toxic_water.rain

#> Add in water tag if player is in water (or waterlogged block)
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/toxic_water/check_for_water

#> If player is in water, give effects
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=!abch.toxic_water.out_of_water] at @s run function abchc:modifiers/toxic_water/in_water

#> If player is in rain, give effects
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=abch.toxic_water.rain] at @s if score toxic_water.rain abch.config matches 1 run function abchc:modifiers/toxic_water/in_rain

#> If player is out of water, clear effects applied if player was outside water
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=abch.toxic_water.out_of_water, tag=!abch.toxic_water.rain ] at @s run function abchc:modifiers/toxic_water/out_of_water