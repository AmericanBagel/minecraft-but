#> abchc:menu/random/max/5down
# Decrease random config score modifiers by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.max abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config