#> abchc:menu/modifiers/core/tnt_bats/radius/1up
# Increase tnt_bats config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_bats/**
# @context player

#> Add 1 to score
scoreboard players add tnt_bats.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_bats/config