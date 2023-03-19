#> abchc:modifiers/tnt_bats/load
# Main load function for tnt_bats
# Manage configs and defaults
# @within abchc:modifiers/load
# @context root
# @output
#   score tnt_bats.spawn abch.config
#       Whether to spawn new bats
#   score tnt_bats.percent abch.config
#       Percent chance to spawn a new bat from a non-bat entity

# Set default to 1
execute unless score tnt_bats.spawn abch.config matches 0..1 run scoreboard players set tnt_bats.spawn abch.config 1

# Set default to 1
execute unless score tnt_bats.percent abch.config matches 1..100 run scoreboard players set tnt_bats.percent abch.config 1