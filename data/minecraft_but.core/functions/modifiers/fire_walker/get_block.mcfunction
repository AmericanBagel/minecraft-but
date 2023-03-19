#> minecraft_but.coreraft_but.core:modifiers/fire_walker/get_block
# Get a random number exponentially
# @within minecraft_but.coreraft_but.core:modifiers/fire_walker/**
# @context player
# @input
#   score prob minecraft_but.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#       or 1 / ((n / 1000) + 1000)
#   score $max random
#       Max number; number to stop incrementing once met
# @output
#   score $out random
#       Random number within range

scoreboard players set prob minecraft_but.rng.math 1000
scoreboard players set $max random 6
function minecraft_but.coreraft_but.core:apis/rng/exponential