#> minecraft_but.core:menu/modifiers/core/explosive_sight/radius/5down
# Decrease explosive_sight config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_sight/**
# @context player

#> Remove 5 from score
scoreboard players remove explosive_sight.radius minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_sight/config