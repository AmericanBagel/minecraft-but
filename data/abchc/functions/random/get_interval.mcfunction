#> abchc:random/get_interval
# Get interval based on configs
# @within abchc:random/roll
# @context root
# @input
#   score random.interval
#       How often in minutes modifiers should be selected, 0 to never reroll
#   score random.interval_rand
#       Max random interval offset in seconds
#   score random.max
#       Max amount of modifiers
#   score random.chance
#       Chance factor to determine how many modifiers should be selected
#   score random.reroll
#       Boolean for if modifiers should be re-rolled or just added

#> Get offset
## Get interval in seconds
# Get interval in minutes from config
scoreboard players operation int_seconds abch.random = random.interval abch.config

# Convert interval to seconds
scoreboard players operation int_seconds abch.random *= #60 abch.math

## Get offset values
# Divide base offset by two
scoreboard players operation $max random = random.interval_rand abch.config
scoreboard players operation $max random /= #2 abch.math

## Get negative offset
scoreboard players operation $min random = $max random
scoreboard players operation $min random *= #-1 abch.math

## Get random number
function random:uniform

## Apply offset to interval
scoreboard players operation int_seconds abch.random -= $out random

## Get interval in ticks
scoreboard players operation interval abch.random = int_seconds abch.random
scoreboard players operation interval abch.random *= #20 abch.math