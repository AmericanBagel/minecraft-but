#> abchc:modifiers/lightning_storm/load
# Main function for "Lightning Storm" modifier
# Manage scoreboards, configs, and defaults
# @within abchc:modifiers/directory
# @context root
# @output
#   lightning_storm.times abch.config
#       How much lightning to spawn every second, up to 20

execute unless score lightning_storm.times abch.config matches -2147483648..2147483647 if score difficulty.global abch.config matches 0 run scoreboard players set lightning_storm.times abch.config 1
execute unless score lightning_storm.times abch.config matches -2147483648..2147483647 if score difficulty.global abch.config matches 1 run scoreboard players set lightning_storm.times abch.config 3
execute unless score lightning_storm.times abch.config matches -2147483648..2147483647 if score difficulty.global abch.config matches 2 run scoreboard players set lightning_storm.times abch.config 5
execute unless score lightning_storm.times abch.config matches -2147483648..2147483647 if score difficulty.global abch.config matches 3 run scoreboard players set lightning_storm.times abch.config 10