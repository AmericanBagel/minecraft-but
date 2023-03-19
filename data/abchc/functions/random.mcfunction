#> abchc:random
# Random mode function
#
# Randomly select modifiers after configurable interval
# @within abchc:modifiers/directory
# @context root
# @input
#   score random.interval abch.config
#       How often in minutes modifiers should be selected, 0 to never reroll
#   score random.interval_rand abch.config
#       Max random interval offset in seconds
#   score random.max abch.config
#       Max amount of modifiers
#   score random.chance abch.config
#       Chance factor to determine how many modifiers should be selected
#   score random.reroll abch.config
#       Boolean for if modifiers should be re-rolled or just added
#
#   score interval abch.random
#       How many ticks until reroll

#> Decrement interval
scoreboard players remove interval abch.random 1

#> If interval is 0, reroll
execute if score interval abch.random matches ..0 run function abchc:random/roll

#> Run modifiers
function abchc:modifiers/random