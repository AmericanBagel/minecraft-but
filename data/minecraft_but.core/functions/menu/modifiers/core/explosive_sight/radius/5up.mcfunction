#> minecraft_but.core:menu/modifiers/core/explosive_sight/radius/5up
# Increase explosive_sight config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_sight/**
# @context player

#> Add 5 to score
scoreboard players add explosive_sight.radius minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_sight/config