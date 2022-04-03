#> abchc:menu/modifiers/core/creeper_nukes/radius/5down
# Decrease creeper_nukes config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/creeper_nukes/**
# @context player

#> Remove 5 from score
scoreboard players remove creeper_nukes.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/creeper_nukes/config