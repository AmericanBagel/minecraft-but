#> abchc:modifiers/death_swap/start_time
# Start death swap interval
#
# @within abchc:modifiers/death_swap/main
# @context root
# @input
#   score death_swap.interval abch.config
#       How often to swap players, incrementing in ten seconds, default 30 (300 seconds or 5 minutes)
#   score death_swap.interval_min abch.config
#       Minimum number to randomly offset interval by 10 seconds, usually a negative number, default 3 (30 seconds)
#   score death_swap.interval_max abch.config
#       Maximum number to randomly offset interval by 10 seconds, should be positive, default 3 (30 seconds)
#   score out abch.rng.math
#       Random number generated by LCG between in and in1
# @output
#   score $time abch.config
#       The time until players are swapped. Set by interval config plus random offset.
#   score $interval abch.config
#       The time until players are swapped without random offset.
#   score $random abch.death_swap
#       Random offset added to $time to make a random yet predictable offset.
#   score in abch.rng.math
#       Minimum number for LCG random number
#   score in1 abch.rng.math
#       Maximum number for LCG random number

#> Get interval
# Convert interval config into $interval
scoreboard players operation $interval abch.death_swap = death_swap.interval abch.config
# Multiply interval by 200 (10 * 20, 10 for ten seconds, 20 for converting to ticks)
scoreboard players operation $interval abch.death_swap *= #200 abch.math

#> Get random
# Get min from config
scoreboard players operation $min abch.death_swap = death_swap.interval_min abch.config
# Multiply by 200 (10 * 20, 10 for ten seconds, 20 for converting to ticks)
scoreboard players operation $min abch.death_swap *= #200 abch.math

# Get max from config
scoreboard players operation $max abch.death_swap = death_swap.interval_max abch.config
# Multiply by 200 (10 * 20, 10 for ten seconds, 20 for converting to ticks)
scoreboard players operation $max abch.death_swap *= #200 abch.math

# Set min and max to rng scores
scoreboard players operation in abch.rng.math = $min abch.death_swap
scoreboard players operation in1 abch.rng.math = $max abch.death_swap

# Get random number between min and max
function abchc:apis/rng/range
# Set random number to $random
#tellraw @a {"score":{"objective": "abch.rng.math","name": "out"}}
scoreboard players operation $random abch.death_swap = out abch.rng.math

# Set $time to $interval
scoreboard players operation $time abch.death_swap = $interval abch.death_swap

#> Offset interval by random
scoreboard players operation $time abch.death_swap += $random abch.death_swap