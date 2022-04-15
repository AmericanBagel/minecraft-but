#> abchc:random/range
# Get truly pseudorandom, unbiased modifier count
# @within abchc:random/get_modifier_count
# @context root
# @input
#   score random.max abch.config
#       Configured maximum amount of modifiers to enable
#       per roll.
#   
# @output
#   scor ein abch.rng.math
#       Minimum random number
#   score in1 abch.rng.math
#       Maximum random number
#
#   score modifiers abch.random
#       How many modifiers to enable

# Set minimum to 1 and max to max config
scoreboard players set in abch.rng.math 1
scoreboard players operation in1 abch.rng.math = random.max abch.config

# Get random number
function abchc:apis/rng/range

# Return randum number as modifiers enum
scoreboard players operation modifiers abch.random = out abch.rng.math