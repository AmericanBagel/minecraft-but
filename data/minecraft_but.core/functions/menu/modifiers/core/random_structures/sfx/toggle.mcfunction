#> minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/sfx/toggle
# Toggle random_structures config score sfx between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/**
# @context player

# Add score
scoreboard players add random_structures.sfx minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score random_structures.sfx minecraft_but.config matches 2.. run scoreboard players set random_structures.sfx minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/config