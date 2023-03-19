#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1down
# Decrease explosive_phantoms config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Remove 1 from score
scoreboard players remove explosive_phantoms.radius minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/config