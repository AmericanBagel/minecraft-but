#> abchc:menu/modifiers/core/anvil_rain/relative/reset
# Reset anvil_rain config score relative to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/anvil_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score anvil_rain.relative abch.default matches -2147483648..2147483647 run scoreboard players operation anvil_rain.relative abch.config = anvil_rain.relative abch.default
# If default wasn't set, set score to 0
execute unless score anvil_rain.relative abch.default matches -2147483648..2147483647 run scoreboard players set anvil_rain.relative abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/anvil_rain/config