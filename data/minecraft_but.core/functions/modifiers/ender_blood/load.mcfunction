#> minecraft_but.core:modifiers/ender_blood/load
# Load file for "Ender blood" modifier
# Manage scoreboards, configs, and defaults
# @within minecraft_but.core:modifiers/load
# @context root
# @output
#   score ender_blood.chance minecraft_but.config
#       Chance to teleport players per second
#   score ender_blood.radius minecraft_but.config
#       How far away in radius to teleport players randomly

# Scoreboards
scoreboard objectives add minecraft_but.ender_blood dummy

# If a value isn't set, set it to 16
execute unless score ender_blood.radius minecraft_but.config matches 1..2147483647 run scoreboard players set ender_blood.radius minecraft_but.config 16