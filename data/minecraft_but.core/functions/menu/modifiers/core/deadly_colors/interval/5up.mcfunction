#> minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/interval/5up
# Increase deadly_colors config score interval by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/**
# @context player

#> Add 5 to score
scoreboard players add deadly_colors.interval minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/config