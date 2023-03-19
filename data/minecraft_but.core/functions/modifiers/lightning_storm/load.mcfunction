#> minecraft_but.coreraft_but.core:modifiers/lightning_storm/load
# Main function for "Lightning Storm" modifier
# Manage scoreboards, configs, and defaults
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root
# @output
#   lightning_storm.times minecraft_but.config
#       How much lightning to spawn every second, up to 20

execute unless score lightning_storm.times minecraft_but.config matches -2147483648..2147483647 if score difficulty.global minecraft_but.config matches 0 run scoreboard players set lightning_storm.times minecraft_but.config 1
execute unless score lightning_storm.times minecraft_but.config matches -2147483648..2147483647 if score difficulty.global minecraft_but.config matches 1 run scoreboard players set lightning_storm.times minecraft_but.config 3
execute unless score lightning_storm.times minecraft_but.config matches -2147483648..2147483647 if score difficulty.global minecraft_but.config matches 2 run scoreboard players set lightning_storm.times minecraft_but.config 5
execute unless score lightning_storm.times minecraft_but.config matches -2147483648..2147483647 if score difficulty.global minecraft_but.config matches 3 run scoreboard players set lightning_storm.times minecraft_but.config 10