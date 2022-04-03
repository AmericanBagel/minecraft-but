#> abchc:menu/modifiers/core/feature_fanatic/chance/1up
# Increase feature_fanatic config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Add 1 to score
scoreboard players add feature_fanatic.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config