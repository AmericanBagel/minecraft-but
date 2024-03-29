#> minecraft_but.core:menu/modifiers/core/toxic_water/sfx/reset
# Reset toxic_water config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/toxic_water/**
# @context player

#> Reset
# If default was set, set score to default
execute if score toxic_water.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation toxic_water.sfx minecraft_but.config = toxic_water.sfx minecraft_but.default
# If default wasn't set, set score to 0
execute unless score toxic_water.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players set toxic_water.sfx minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/toxic_water/config