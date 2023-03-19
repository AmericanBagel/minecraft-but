#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/radius/1down
# Decrease creeper_nukes config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/**
# @context player

#> Remove 1 from score
scoreboard players remove creeper_nukes.radius minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/config