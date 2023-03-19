#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/radius/5down
# Decrease creeper_mobs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/**
# @context player

#> Remove 5 from score
scoreboard players remove creeper_mobs.radius minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/config