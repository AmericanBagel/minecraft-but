#> minecraft_but.core:menu/modifiers/core/look_straight/y_rot/reset
# Reset look_straight config score y_rot to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/look_straight/**
# @context player

#> Reset
# If default was set, set score to default
execute if score look_straight.y_rot minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation look_straight.y_rot minecraft_but.config = look_straight.y_rot minecraft_but.default
# If default wasn't set, set score to 1
execute unless score look_straight.y_rot minecraft_but.default matches -2147483648..2147483647 run scoreboard players set look_straight.y_rot minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/look_straight/config