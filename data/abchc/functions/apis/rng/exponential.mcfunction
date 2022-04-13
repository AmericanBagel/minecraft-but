#> abchc:apis/rng/exponential
# Get a random number exponentially, higher numbers being less probable
# @context any
# @public
# @input
#   score prob abch.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#       or 1 / ((n / 1000) + 1000)
#   score max abch.rng.math
#       Max number; number to stop incrementing once met

#> Reset previous temp score
scoreboard players reset #exp_temp abch.rng.math

#> Set temp prob to prob + 1000
scoreboard players operation #temp_prob abch.rng.math = prob abch.rng.math
scoreboard players operation #temp_prob abch.rng.math += #1000 abch.rng.constant

#> Start looping through
function abchc:apis/rng/zprivate/exp_loop

#> Output
scoreboard players operation out abch.rng.math = #exp_temp abch.rng.math