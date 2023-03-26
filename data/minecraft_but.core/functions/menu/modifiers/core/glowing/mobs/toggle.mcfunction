#> minecraft_but.core:menu/modifiers/core/glowing/mobs/toggle
# Toggle glowing config score mobs between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/glowing/**
# @context player

# Add score
scoreboard players add glowing.mobs minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score glowing.mobs minecraft_but.config matches 2.. run scoreboard players set glowing.mobs minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/glowing/config