#> abchc:menu/modifiers/core/tnt_bats/radius/5up
# Increase tnt_bats config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_bats/**
# @context player

#> Add 5 to score
scoreboard players add tnt_bats.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_bats/config