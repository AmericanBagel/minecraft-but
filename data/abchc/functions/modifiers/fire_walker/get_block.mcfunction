#> abchc:modifiers/fire_walker/get_block
# Get a random number exponentially
# @within abchc:modifiers/fire_walker/**
# @context player
# @input
#   score prob abch.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#       or 1 / ((n / 1000) + 1000)
#   score max abch.rng.math
#       Max number; number to stop incrementing once met
# @output
#   score out abch.rng.math
#       Random number within range

scoreboard players set prob abch.rng.math 1000
scoreboard players set max abch.rng.math 6
function abchc:apis/rng/exponential