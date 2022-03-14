#> abchc:modifiers/anvil_rain/get_offset
# Get random number between 1 and 15 for anvil Y offset
# @within abchc:modifiers/anvil_rain/spawn_relative
# @context anvil spawner
# @input
#   score in abch.rng.math
#       Minimum number for RNG
#   score in1 abch.rng.math
#       Maximum number for RNG
# @output
# score #offset abch.anvil_rain
#   How far in the Y axis anvils should be offset while spawning
#   for a more random, natural feel.

# Set minimum number to 1
scoreboard players set in abch.rng.math 15

# Set maximum number to 15
scoreboard players set in1 abch.rng.math 25

# Run LCG, get random number
function abchc:apis/rng/range

# Set LCG output to score
scoreboard players operation #offset abch.anvil_rain = out abch.rng.math