#> minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/radius/5up
# Increase random_teleport config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/**
# @context player

#> Add 5 to score
scoreboard players add random_teleport.radius minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random_teleport/config