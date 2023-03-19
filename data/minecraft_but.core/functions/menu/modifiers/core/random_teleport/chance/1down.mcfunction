#> minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/chance/1down
# Decrease random_teleport config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/**
# @context player

#> Remove 1 from score
scoreboard players remove random_teleport.chance minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/config