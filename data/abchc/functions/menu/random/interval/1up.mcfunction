#> abchc:menu/random/interval/1up
# Increase random config score interval by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add random.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config