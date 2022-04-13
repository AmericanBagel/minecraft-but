#> abchc:modifiers/toxic_water/main
# Main function for "You can't touch water" modifier
# Kill players who touch water
# @within abchc:modifiers/directory
# @context root

#> Reset tags
tag @a add abch.toxic_water.out_of_water
tag @a remove abch.toxic_water.rain

#> Check if player is in water or rain
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/toxic_water/check_for_water

#> In water
# If player is in water, give effect
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=!abch.toxic_water.out_of_water ] at @s run function abchc:modifiers/toxic_water/in_water

# If player isn't in water, clear effects applied if player was outside water
execute as @a[ tag=!abch.blacklist, tag=!abch.toxic_water.blacklist, gamemode=!creative, gamemode=!spectator, tag=abch.toxic_water.out_of_water] at @s run function abchc:modifiers/toxic_water/out_of_water