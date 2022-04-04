#> abchc:modifiers/2020_mode/main
# Push players away from other players
# @within abchc:modifiers/directory
# @context player

#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[ distance=0.01..2 ] run effect give @s minecraft:wither 1 0 true
#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @s[ distance=0.01..2 ] run title @s times 0 1 1

scoreboard players reset @e abch.2020_mode.x
scoreboard players reset @e abch.2020_mode.z

#> Move entities away
# Store nearby entities' x position
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[distance=..5] store result score @s abch.2020_mode.x run data get entity @s Pos[0]
# Subtract to player's x position
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[type=!player,distance=..5] run scoreboard players operation @s abch.2020_mode.x -= @p abch.2020_mode.x
# Store the difference into nearby entity to make difference larger, moving entities away
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[type=!player,distance=..5] store result entity @s Motion[0] double 0.1 run scoreboard players get @s abch.2020_mode.x

# Store nearby entities' z position
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[distance=..5] store result score @s abch.2020_mode.z run data get entity @s Pos[2]
# Subtract to player's z position
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[type=!player,distance=..5] run scoreboard players operation @s abch.2020_mode.z -= @p abch.2020_mode.z
# Store the difference into nearby entity to make difference larger, moving entities away
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[type=!player,distance=..5] store result entity @s Motion[2] double 0.1 run scoreboard players get @s abch.2020_mode.z

#> Move players away
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[distance=0.0001..5] run function abchc:modifiers/2020_mode/player

#> Particles
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore, sort=nearest] at @s run function abchc:modifiers/2020_mode/particles/start