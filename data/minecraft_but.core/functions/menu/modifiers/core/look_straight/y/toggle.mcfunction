#> minecraft_but.core:menu/modifiers/core/look_straight/y/toggle
# Toggle look_straight config score y between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/look_straight/**
# @context player

# Add score
scoreboard players add look_straight.y minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score look_straight.y minecraft_but.config matches 2.. run scoreboard players set look_straight.y minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/look_straight/config