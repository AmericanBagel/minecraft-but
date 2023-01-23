#> minecraft_but.core:modifiers/deadly_colors/load
# @within minecraft_but.core:modifiers/load

## Deadly Colors
scoreboard objectives add minecraft_but.deadly_colors.color dummy
scoreboard objectives add minecraft_but.deadly_colors.color dummy
scoreboard objectives add minecraft_but.deadly_colors dummy

# Interval for killing
execute unless score deadly_colors.interval minecraft_but.config matches 0.. run scoreboard players set deadly_colors.interval minecraft_but.config 200

# How many ticks before killing to warn player
execute unless score deadly_colors.interval minecraft_but.config matches 0.. run scoreboard players set deadly_colors.offset minecraft_but.config 60

# Keep this at one unless you know what you're doing.
# How many ticks before killing to stop warning
execute unless score deadly_colors.interval minecraft_but.config matches 0.. run scoreboard players set deadly_colors.stop_offset minecraft_but.config 1

# Whether to kill with a specific color or a random color
execute unless score deadly_colors.random minecraft_but.config matches 1 unless score deadly_colors.random minecraft_but.config matches 0 run scoreboard players set deadly_colors.random minecraft_but.config 1