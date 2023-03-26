#> minecraft_but.core:menu/modifiers/core/glowing/other/toggle
# Toggle glowing config score other between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/glowing/**
# @context player

# Add score
scoreboard players add glowing.other minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score glowing.other minecraft_but.config matches 2.. run scoreboard players set glowing.other minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/glowing/config