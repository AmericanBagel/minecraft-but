#> minecraft_but.core:menu/modifiers/core/look_straight/x/reset
# Reset look_straight config score x to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/look_straight/**
# @context player

#> Reset
# If default was set, set score to default
execute if score look_straight.x minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation look_straight.x minecraft_but.config = look_straight.x minecraft_but.default
# If default wasn't set, set score to 0
execute unless score look_straight.x minecraft_but.default matches -2147483648..2147483647 run scoreboard players set look_straight.x minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/look_straight/config