#> abchc:menu/modifiers/core/feature_fanatic/chance/5down
# Decrease feature_fanatic config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Remove 5 from score
scoreboard players remove feature_fanatic.chance abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config