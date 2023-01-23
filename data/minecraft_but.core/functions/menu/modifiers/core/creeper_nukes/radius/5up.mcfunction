#> minecraft_but.core:menu/modifiers/core/creeper_nukes/radius/5up
# Increase creeper_nukes config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/creeper_nukes/**
# @context player

#> Add 5 to score
scoreboard players add creeper_nukes.radius minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/creeper_nukes/config