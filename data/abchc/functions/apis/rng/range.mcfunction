#> abchc:apis/rng/range
#
# CloudWolfYT's LCG functions
# from his MathLite data pack
# 10/10 the man's awesome
#
# Download it here vvv
# https://cloudwolfyt.github.io/pages/downloads/list.html
#
# Get random number in specified range
#
# @api
# @context any
# @input
#   score in abch.rng.math
#       Minimum number to generate
#   score in1 abch.rng.math
#       Maximum number to generate
# @output
# score out abch.rng.math
#       Random number in range


scoreboard players add in1 abch.rng.math 1
scoreboard players operation #range abch.rng.math = in1 abch.rng.math
scoreboard players operation #range abch.rng.math -= in abch.rng.math

scoreboard players operation #m1 abch.rng.math = #range abch.rng.math
scoreboard players remove #m1 abch.rng.math 1
function abchc:apis/rng/zprivate/next_int
scoreboard players operation out abch.rng.math += in abch.rng.math

scoreboard players reset #m1 abch.rng.math
scoreboard players remove in1 abch.rng.math 1