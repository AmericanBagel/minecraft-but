#> minecraft_but.core:menu/modifiers/core/tnt_rain/radius/reset
# Reset tnt_rain config score radius to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score tnt_rain.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation tnt_rain.radius minecraft_but.config = tnt_rain.radius minecraft_but.default
# If default wasn't set, set score to 0
execute unless score tnt_rain.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players set tnt_rain.radius minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/tnt_rain/config