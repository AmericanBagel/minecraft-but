#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_sight/radius/1down
# Decrease explosive_sight config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_sight/**
# @context player

#> Remove 1 from score
scoreboard players remove explosive_sight.radius minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_sight/config