#> abchc:menu/modifiers/core/no_gravity/travel/reset
# Reset no_gravity config score travel to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/no_gravity/**
# @context player

#> Reset
# If default was set, set score to default
execute if score no_gravity.travel abch.default matches -2147483648..2147483647 run scoreboard players operation no_gravity.travel abch.config = no_gravity.travel abch.default
# If default wasn't set, set score to 0
execute unless score no_gravity.travel abch.default matches -2147483648..2147483647 run scoreboard players set no_gravity.travel abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/no_gravity/config