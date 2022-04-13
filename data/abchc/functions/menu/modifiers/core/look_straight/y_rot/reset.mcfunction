#> abchc:menu/modifiers/core/look_straight/y_rot/reset
# Reset look_straight config score y_rot to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/look_straight/**
# @context player

#> Reset
# If default was set, set score to default
execute if score look_straight.y_rot abch.default matches -2147483648..2147483647 run scoreboard players operation look_straight.y_rot abch.config = look_straight.y_rot abch.default
# If default wasn't set, set score to 1
execute unless score look_straight.y_rot abch.default matches -2147483648..2147483647 run scoreboard players set look_straight.y_rot abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/look_straight/config