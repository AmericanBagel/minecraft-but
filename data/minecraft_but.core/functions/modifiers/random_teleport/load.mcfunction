#> minecraft_but.coreraft_but.core:modifiers/random_teleport/load
# Load file for "Ender blood" modifier
# Manage scoreboards, configs, and defaults
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root
# @output
#   score random_teleport.chance minecraft_but.config
#       Chance to teleport players per second
#   score random_teleport.radius minecraft_but.config
#       How far away in radius to teleport players randomly

# Scoreboards
scoreboard objectives add minecraft_but.random_teleport dummy

# If a value isn't set, set it to 3
execute unless score random_teleport.chance minecraft_but.config matches 1..100 run scoreboard players set random_teleport.chance minecraft_but.config 10

# If a value isn't set, set it to 16
execute unless score random_teleport.radius minecraft_but.config matches 1..2147483647 run scoreboard players set random_teleport.radius minecraft_but.config 16