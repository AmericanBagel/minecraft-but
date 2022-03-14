#> abchc:apis/rng/lcg
# Generate random number
# @api
# @context any
# @input
#   score #lcg abch.rng.math
#       Seed for random number
# @output
# score out abch.rng.math
#   Random number to output

# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg abch.rng.math *= #lcg abch.rng.constant
scoreboard players add #lcg abch.rng.math 12345
scoreboard players operation out abch.rng.math = #lcg abch.rng.math