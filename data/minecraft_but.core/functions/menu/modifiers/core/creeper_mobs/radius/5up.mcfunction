#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/radius/5up
# Increase creeper_mobs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/**
# @context player

#> Add 5 to score
scoreboard players add creeper_mobs.radius minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/config