#> minecraft_but.core:menu/modifiers/core/anvil_rain/grief/reset
# Reset anvil_rain config score grief to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score anvil_rain.grief minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation anvil_rain.grief minecraft_but.config = anvil_rain.grief minecraft_but.default
# If default wasn't set, set score to 0
execute unless score anvil_rain.grief minecraft_but.default matches -2147483648..2147483647 run scoreboard players set anvil_rain.grief minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/anvil_rain/config