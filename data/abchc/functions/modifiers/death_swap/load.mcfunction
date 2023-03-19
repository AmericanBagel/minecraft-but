#> abchc:modifiers/death_swap/load
# Load function for "Death Swap" modifier
# Adds scoreboards and manages config defaults

# If custom interval isn't set, set default of 30 (300 seconds/5 minutes)
execute unless score death_swap.interval abch.config matches -2147483648..2147483647 run scoreboard players set death_swap.interval abch.config 30

# Minimum and maximum values for random number to offset interval
execute unless score death_swap.interval_min abch.config matches -2147483648..2147483647 run scoreboard players set death_swap.interval_min abch.config -3
execute unless score death_swap.interval_max abch.config matches -2147483648..2147483647 run scoreboard players set death_swap.interval_max abch.config 3

# Master scoreboard for everything that only needs enums
scoreboard objectives add abch.death_swap dummy