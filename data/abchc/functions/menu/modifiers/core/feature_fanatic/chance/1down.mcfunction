#> abchc:menu/modifiers/core/feature_fanatic/chance/1down
# Decrease feature_fanatic config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Remove 1 from score
scoreboard players remove feature_fanatic.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config