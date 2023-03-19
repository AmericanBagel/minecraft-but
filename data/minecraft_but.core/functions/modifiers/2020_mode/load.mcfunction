#> minecraft_but.core:modifiers/2020_mode/load
# Main function for "2020 mode" modifier
# Manage scoreboards, configs, and defaults
# @within minecraft_but.core:modifiers/directory
# @context player

#execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[ distance=0.01..2 ] run effect give @s minecraft:wither 1 0 true
#execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @s[ distance=0.01..2 ] run title @s times 0 1 1

scoreboard objectives add minecraft_but.2020_mode.x dummy
scoreboard objectives add minecraft_but.2020_mode.y dummy
scoreboard objectives add minecraft_but.2020_mode.z dummy