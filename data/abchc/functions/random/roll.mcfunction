#> abchc:random/roll
# Get interval and roll for modifiers once interval hits 0
# @within abchc:random
# @context root

# Reset interval
function abchc:random/get_interval

# Get amount of modifiers to enable
function abchc:random/get_modifier_count

# Disable old modifiers unless reroll disabled
execute unless score random.reroll abch.config matches 0 run scoreboard players reset * abch.random.toggle

# Enable modifiers
scoreboard players operation #loop abch.random = modifiers abch.random
function abchc:random/modifier_loop