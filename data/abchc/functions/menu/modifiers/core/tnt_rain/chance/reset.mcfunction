#> abchc:menu/modifiers/core/tnt_rain/chance/reset
# Reset tnt_rain config score chance to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score tnt_rain.chance abch.default matches -2147483648..2147483647 run scoreboard players operation tnt_rain.chance abch.config = tnt_rain.chance abch.default
# If default wasn't set, set score to 1
execute unless score tnt_rain.chance abch.default matches -2147483648..2147483647 run scoreboard players set tnt_rain.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_rain/config