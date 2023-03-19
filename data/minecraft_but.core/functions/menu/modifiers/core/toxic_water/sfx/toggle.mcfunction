#> minecraft_but.core:menu/modifiers/core/toxic_water/sfx/toggle
# Toggle toxic_water config score sfx between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/toxic_water/**
# @context player

# Add score
scoreboard players add toxic_water.sfx minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score toxic_water.sfx minecraft_but.config matches 2.. run scoreboard players set toxic_water.sfx minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/toxic_water/config