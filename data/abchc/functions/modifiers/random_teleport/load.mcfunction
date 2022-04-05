#> abchc:modifiers/random_teleport/load
# Load file for "Ender blood" modifier
# Manage scoreboards, configs, and defaults
# @within abchc:modifiers/load
# @context root
# @output
#   score random_teleport.chance abch.config
#       Chance to teleport players per second

# If a value isn't set, set it to 3
execute unless score random_teleport.chance abch.config matches 1..100 run scoreboard players set anvil_rain.sky abch.config 3