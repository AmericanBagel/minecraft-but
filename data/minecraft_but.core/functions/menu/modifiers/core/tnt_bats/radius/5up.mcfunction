#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/radius/5up
# Increase tnt_bats config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/**
# @context player

#> Add 5 to score
scoreboard players add tnt_bats.radius minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/config