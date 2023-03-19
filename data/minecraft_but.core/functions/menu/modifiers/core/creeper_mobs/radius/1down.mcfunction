#> minecraft_but.core:menu/modifiers/core/creeper_mobs/radius/1down
# Decrease creeper_mobs config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/creeper_mobs/**
# @context player

#> Remove 1 from score
scoreboard players remove creeper_mobs.radius minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/creeper_mobs/config