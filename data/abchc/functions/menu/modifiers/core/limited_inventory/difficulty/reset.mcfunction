#> abchc:menu/modifiers/core/limited_inventory/difficulty/reset
# Reset limited_inventory difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/limited_inventory/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.limited_inventory abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/limited_inventory/config