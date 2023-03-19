#> minecraft_but.coreraft_but.core:modifiers/tnt_rain/get_offset
# Get random number between 1 and 15 for tnt Y offset
# @within minecraft_but.coreraft_but.core:modifiers/tnt_rain/spawn_relative
# @context tnt spawner
# @input
#   score $min random
#       Minimum number for RNG
#   score $max random
#       Maximum number for RNG
# @output
# score #offset minecraft_but.tnt_rain
#   How far in the Y axis tnts should be offset while spawning
#   for a more random, natural feel.

# Set minimum number to 1
scoreboard players set $min random 15

# Set maximum number to 15
scoreboard players set $max random 25

# Run LCG, get random number
function random:uniform

# Set LCG output to score
scoreboard players operation #offset minecraft_but.tnt_rain = $out random