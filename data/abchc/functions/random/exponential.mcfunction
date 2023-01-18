#> abchc:random/exponential
# Get modifier count exponentially, favoring low numbers
# @within abchc:random/get_modifier_count
# @context 
# @output
#   score prob abch.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#       or 1 / ((n / 1000) + 1000)
#   score $max random
#       Max number; number to stop incrementing once met
#
#

#> Get random exponential number
scoreboard players operation $max random = random.max abch.config
scoreboard players operation prob abch.rng.math = random.chance abch.config
function abchc:apis/rng/exponential

#> Store random number into modifier enum
scoreboard players operation modifiers abch.random = $out random