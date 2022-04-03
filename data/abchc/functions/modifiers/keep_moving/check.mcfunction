#> abchc:modifiers/keep_moving/check
#
# Get player's position, compare it with previous position, and run either movement or still functions
#
# @context player
# @within abchc:modifiers/keep_moving/

#> Clear effects
effect clear @s regeneration
effect clear @s wither

# Get player's current position
execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.keep_moving.blacklist ] run function abchc:modifiers/keep_moving/current_pos

# Compare pos scores with a bias towards moving
execute unless score @s abch.keep_moving.x = $p abch.keep_moving.x run function abchc:modifiers/keep_moving/move
execute unless score @s abch.keep_moving.y = $p abch.keep_moving.y run function abchc:modifiers/keep_moving/move
execute unless score @s abch.keep_moving.z = $p abch.keep_moving.z run function abchc:modifiers/keep_moving/move

execute if score @s abch.keep_moving.x = $p abch.keep_moving.x if score @s abch.keep_moving.y = $p abch.keep_moving.y if score @s abch.keep_moving.z = $p abch.keep_moving.z run function abchc:modifiers/keep_moving/still

# For the first few ticks of staying still, give player a warning through the FOV zoom of slowness
# which gradually increases until...
execute if score @s abch.keep_moving.still_time matches 5.. run effect give @s slowness 1 0
execute if score @s abch.keep_moving.still_time matches 6.. run effect give @s slowness 1 1
execute if score @s abch.keep_moving.still_time matches 7.. run effect give @s slowness 1 2
execute if score @s abch.keep_moving.still_time matches 8.. run effect give @s slowness 1 3
execute if score @s abch.keep_moving.still_time matches 9.. run effect give @s slowness 1 4
execute if score @s abch.keep_moving.still_time matches 10.. run effect give @s slowness 1 5

# Damage players, the damage gradually increasing the longer they stay still
execute if score @s abch.keep_moving.still_time matches 15.. run effect give @s wither 1 0
execute if score @s abch.keep_moving.still_time matches 20.. run effect give @s wither 1 1
execute if score @s abch.keep_moving.still_time matches 40.. run effect give @s wither 1 2
execute if score @s abch.keep_moving.still_time matches 60.. run effect give @s wither 1 3

# Store player's current position for next tick
execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.keep_moving.blacklist ] at @s run function abchc:modifiers/keep_moving/later_pos