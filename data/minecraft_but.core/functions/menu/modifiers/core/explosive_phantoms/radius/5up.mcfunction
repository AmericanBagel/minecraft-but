#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/radius/5up
# Increase explosive_phantoms config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Add 5 to score
scoreboard players add explosive_phantoms.radius minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/config