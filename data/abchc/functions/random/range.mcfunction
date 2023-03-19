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
#   scor e$min random
#       Minimum random number
#   score $max random
#       Maximum random number
#
#   score modifiers abch.random
#       How many modifiers to enable

# Set minimum to 1 and max to max config
scoreboard players set $min random 1
scoreboard players operation $max random = random.max abch.config

# Get random number
function random:uniform

# Return randum number as modifiers enum
scoreboard players operation modifiers abch.random = $out random