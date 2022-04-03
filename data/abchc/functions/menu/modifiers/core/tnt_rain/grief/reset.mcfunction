#> abchc:menu/modifiers/core/tnt_rain/grief/reset
# Reset tnt_rain config score grief to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score tnt_rain.grief abch.default matches -2147483648..2147483647 run scoreboard players operation tnt_rain.grief abch.config = tnt_rain.grief abch.default
# If default wasn't set, set score to 0
execute unless score tnt_rain.grief abch.default matches -2147483648..2147483647 run scoreboard players set tnt_rain.grief abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_rain/config