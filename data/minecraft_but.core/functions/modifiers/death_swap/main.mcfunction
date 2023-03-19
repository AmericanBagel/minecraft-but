#> minecraft_but.core:modifiers/death_swap/main
# Main function for "Death Swap" modifier
# Players periodically swap places
# @within minecraft_but.core:modifiers/directory
# @context root
# @input
#   score death_swap.interval minecraft_but.config
#       How often to swap players, incrementing in ten seconds, default 30 (300 seconds or 5 minutes)
#   score death_swap.interval_min minecraft_but.config
#       Minimum number to randomly offset interval by 10 seconds, usually a negative number, default 3 (30 seconds)
#   score death_swap.interval_max minecraft_but.config
#       Maximum number to randomly offset interval by 10 seconds, should be positive, default 3 (30 seconds)
#   score death_swap.warning minecraft_but.config
#       Whether to warn players about immanent swapping 
# @output
#   score $time minecraft_but.death_swap
#       The time until players are swapped. Set by interval config plus random offset.
#   score $random minecraft_but.death_swap
#       Random offset added to $time to make a random yet predictable offset.
#   score $interval minecraft_but.config
#       interval config converted to ticks (6000 ticks default)

# Decrease time
scoreboard players remove $time minecraft_but.death_swap 1 
scoreboard players remove $interval minecraft_but.death_swap 1 

# If time reaches 0, swap
execute if score $time minecraft_but.death_swap matches ..0 run function minecraft_but.core:modifiers/death_swap/swap/directory

# Get time if time is not set
execute if score $time minecraft_but.death_swap matches ..0 run function minecraft_but.core:modifiers/death_swap/start_time

# Warning
execute unless score death_swap.warning minecraft_but.config matches ..0 run function minecraft_but.core:modifiers/death_swap/warning