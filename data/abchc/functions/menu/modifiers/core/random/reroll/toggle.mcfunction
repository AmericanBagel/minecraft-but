#> abchc:menu/modifiers/core/random/reroll/toggle
# Toggle random config score reroll between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

# Add score
scoreboard players add random.reroll abch.config 1

# If score goes above 1, set it to 0
execute if score random.reroll abch.config matches 2.. run scoreboard players set random.reroll abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/random/config