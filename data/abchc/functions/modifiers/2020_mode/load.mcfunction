#> abchc:modifiers/2020_mode/load
# Main function for "2020 mode" modifier
# Manage scoreboards, configs, and defaults
# @within abchc:modifiers/directory
# @context player

#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[ distance=0.01..2 ] run effect give @s minecraft:wither 1 0 true
#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @s[ distance=0.01..2 ] run title @s times 0 1 1

scoreboard objectives add abch.2020_mode.x dummy
scoreboard objectives add abch.2020_mode.y dummy
scoreboard objectives add abch.2020_mode.z dummy