#> minecraft_but.coreraft_but.core:random/exponential
# Get modifier count exponentially, favoring low numbers
# @within minecraft_but.coreraft_but.core:random/get_modifier_count
# @context 
# @output
#   score prob minecraft_but.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#       or 1 / ((n / 1000) + 1000)
#   score $max random
#       Max number; number to stop incrementing once met
#
#

#> Get random exponential number
scoreboard players operation $max random = random.max minecraft_but.config
scoreboard players operation prob minecraft_but.rng.math = random.chance minecraft_but.config
function minecraft_but.coreraft_but.core:apis/rng/exponential

#> Store random number into modifier enum
scoreboard players operation modifiers minecraft_but.random = $out random