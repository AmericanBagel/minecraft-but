#> minecraft_but.core:random/get_modifier_count
# Get the number of modifiers to enable
# @within minecraft_but.core:random/roll
# @context root
# @input
#   score random.interval minecraft_but.config
#       How often in minutes modifiers should be selected, 0 to never reroll
#   score random.interval_rand minecraft_but.config
#       Max random interval offset in seconds
#   score random.max minecraft_but.config
#       Max amount of modifiers
#   score random.chance minecraft_but.config
#       Chance factor to determine how many modifiers should be selected
#   score random.reroll minecraft_but.config
#       Boolean for if modifiers should be re-rolled or just added
#
#   score interval minecraft_but.random
#       How many ticks until reroll

execute unless score random.exponential minecraft_but.config matches 0 run function minecraft_but.core:random/exponential
execute if score random.exponential minecraft_but.config matches 0 run function minecraft_but.core:random/range