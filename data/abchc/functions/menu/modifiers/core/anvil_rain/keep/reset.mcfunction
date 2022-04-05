#> abchc:menu/modifiers/core/anvil_rain/keep/reset
# Reset anvil_rain config score keep to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/anvil_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score anvil_rain.keep abch.default matches -2147483648..2147483647 run scoreboard players operation anvil_rain.keep abch.config = anvil_rain.keep abch.default
# If default wasn't set, set score to 0
execute unless score anvil_rain.keep abch.default matches -2147483648..2147483647 run scoreboard players set anvil_rain.keep abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/anvil_rain/config