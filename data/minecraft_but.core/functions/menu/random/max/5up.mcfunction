#> minecraft_but.coreraft_but.core:menu/random/max/5up
# Increase random config score modifiers by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/random/**
# @context player

#> Add 5 to score
scoreboard players add random.max minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/random/config