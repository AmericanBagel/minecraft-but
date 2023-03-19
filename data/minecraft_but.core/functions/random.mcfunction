#> minecraft_but.core:random
# Random mode function
#
# Randomly select modifiers after configurable interval
# @within minecraft_but.core:modifiers/directory
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

#> Decrement interval
scoreboard players remove interval minecraft_but.random 1

#> If interval is 0, reroll
execute if score interval minecraft_but.random matches ..0 run function minecraft_but.core:random/roll

#> Run modifiers
function minecraft_but.core:modifiers/random