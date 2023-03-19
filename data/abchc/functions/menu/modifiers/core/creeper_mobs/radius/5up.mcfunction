#> abchc:menu/modifiers/core/creeper_mobs/radius/5up
# Increase creeper_mobs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/creeper_mobs/**
# @context player

#> Add 5 to score
scoreboard players add creeper_mobs.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/creeper_mobs/config