#> abchc:modifiers/random_teleport/load
# Load file for "Ender blood" modifier
# Manage scoreboards, configs, and defaults
# @within abchc:modifiers/load
# @context root
# @output
#   score random_teleport.chance abch.config
#       Chance to teleport players per second
#   score random_teleport.radius abch.config
#       How far away in radius to teleport players randomly

# Scoreboards
scoreboard objectives add abch.random_teleport dummy

# If a value isn't set, set it to 3
execute unless score random_teleport.chance abch.config matches 1..100 run scoreboard players set random_teleport.chance abch.config 10

# If a value isn't set, set it to 16
execute unless score random_teleport.radius abch.config matches 1..2147483647 run scoreboard players set random_teleport.radius abch.config 16