#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle
# Toggle explosive_phantoms config score kill between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

# Add score
scoreboard players add explosive_phantoms.kill minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score explosive_phantoms.kill minecraft_but.config matches 2.. run scoreboard players set explosive_phantoms.kill minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/explosive_phantoms/config