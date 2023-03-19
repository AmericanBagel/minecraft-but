#> minecraft_but.coreraft_but.core:random/roll
# Get interval and roll for modifiers once interval hits 0
# @within minecraft_but.coreraft_but.core:random
# @context root

# Reset interval
function minecraft_but.coreraft_but.core:random/get_interval

# Get amount of modifiers to enable
function minecraft_but.coreraft_but.core:random/get_modifier_count

# Disable old modifiers unless reroll disabled
execute unless score random.reroll minecraft_but.config matches 0 run scoreboard players reset * minecraft_but.random.toggle

# Enable modifiers
scoreboard players operation #loop minecraft_but.random = modifiers minecraft_but.random
function minecraft_but.coreraft_but.core:random/modifier_loop