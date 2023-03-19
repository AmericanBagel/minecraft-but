#> minecraft_but.coreraft_but.core:menu/modifiers/core/degradation/speed/5up
# Increase degradation config score speed by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/degradation/**
# @context player

#> Add 5 to score
scoreboard players add degradation.speed minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/degradation/config