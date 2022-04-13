#> abchc:menu/modifiers/core/mermaid/difficulty/reset
# Reset mermaid difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.mermaid abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/mermaid/config