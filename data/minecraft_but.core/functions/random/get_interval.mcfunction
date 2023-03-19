#> minecraft_but.coreraft_but.core:random/get_interval
# Get interval based on configs
# @within minecraft_but.coreraft_but.core:random/roll
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
scoreboard players operation int_seconds minecraft_but.random = random.interval minecraft_but.config

# Convert interval to seconds
scoreboard players operation int_seconds minecraft_but.random *= #60 minecraft_but.math

## Get offset values
# Divide base offset by two
scoreboard players operation $max random = random.interval_rand minecraft_but.config
scoreboard players operation $max random /= #2 minecraft_but.math

## Get negative offset
scoreboard players operation $min random = $max random
scoreboard players operation $min random *= #-1 minecraft_but.math

## Get random number
function random:uniform

## Apply offset to interval
scoreboard players operation int_seconds minecraft_but.random -= $out random

## Get interval in ticks
scoreboard players operation interval minecraft_but.random = int_seconds minecraft_but.random
scoreboard players operation interval minecraft_but.random *= #20 minecraft_but.math