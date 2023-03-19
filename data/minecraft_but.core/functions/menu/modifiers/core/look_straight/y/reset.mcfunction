#> minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/y/reset
# Reset look_straight config score y to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/**
# @context player

#> Reset
# If default was set, set score to default
execute if score look_straight.y minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation look_straight.y minecraft_but.config = look_straight.y minecraft_but.default
# If default wasn't set, set score to 0
execute unless score look_straight.y minecraft_but.default matches -2147483648..2147483647 run scoreboard players set look_straight.y minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/config