#> abchc:menu/modifiers/core/no_gravity/travel/toggle
# Toggle no_gravity config score travel between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/no_gravity/**
# @context player

# Add score
scoreboard players add no_gravity.travel abch.config 1

# If score goes above 1, set it to 0
execute if score no_gravity.travel abch.config matches 2.. run scoreboard players set no_gravity.travel abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/no_gravity/config