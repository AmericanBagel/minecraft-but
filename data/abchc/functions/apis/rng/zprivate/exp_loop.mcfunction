#> abchc:apis/rng/zprivate/exp_loop
# Loop incrementing number randomly with predefined factor
# @within abchc:apis/rng/exponential
# @context any
# @input
#   score prob abch.rng.math
#       Probability of incrementing number. Higher numbers increase rarity
#   score max abch.rng.math
#       Max number; number to stop incrementing once met

#> Increment score
scoreboard players add #exp_temp abch.rng.math 1

#> Get random number between 1 and 100
scoreboard players set in abch.rng.math 1
scoreboard players operation in1 abch.rng.math = #temp_prob abch.rng.math
function abchc:apis/rng/range

#> Try to continue loop
# If random number is within prob and hasn't hit max, increment
execute if score out abch.rng.math matches ..1000 unless score #exp_temp abch.rng.math >= max abch.rng.math run function abchc:apis/rng/zprivate/exp_loop