#> abchc:random/get_modifier_count
# Get the number of modifiers to enable
# @within abchc:random/roll
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

execute unless score random.exponential abch.config matches 0 run function abchc:random/exponential
execute if score random.exponential abch.config matches 0 run function abchc:random/range