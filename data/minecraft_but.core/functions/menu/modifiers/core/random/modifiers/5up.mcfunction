#> minecraft_but.coreraft_but.core:menu/modifiers/core/random/modifiers/5up
# Increase random config score modifiers by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random/**
# @context player

#> Add 5 to score
scoreboard players add random.modifiers minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random/config