#> minecraft_but.core:menu/modifiers/core/no_gravity/travel/toggle
# Toggle no_gravity config score travel between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/no_gravity/**
# @context player

# Add score
scoreboard players add no_gravity.travel minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score no_gravity.travel minecraft_but.config matches 2.. run scoreboard players set no_gravity.travel minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/no_gravity/config