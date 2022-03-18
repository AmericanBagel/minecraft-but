#> abchc:modifiers/deadly_colors/load
# @within abchc:modifiers/load

## Deadly Colors
scoreboard objectives add abch.deadly_colors.color dummy
scoreboard objectives add abch.deadly_colors.color dummy
scoreboard objectives add abch.deadly_colors dummy

# Interval for killing
execute unless score deadly_colors.interval abch.config matches 0.. run scoreboard players set deadly_colors.interval abch.config 200

# How many ticks before killing to warn player
execute unless score deadly_colors.interval abch.config matches 0.. run scoreboard players set deadly_colors.offset abch.config 60

# Keep this at one unless you know what you're doing.
# How many ticks before killing to stop warning
execute unless score deadly_colors.interval abch.config matches 0.. run scoreboard players set deadly_colors.stop_offset abch.config 1

# Whether to kill with a specific color or a random color
execute unless score deadly_colors.random abch.config matches 1 unless score deadly_colors.random abch.config matches 0 run scoreboard players set deadly_colors.random abch.config 1