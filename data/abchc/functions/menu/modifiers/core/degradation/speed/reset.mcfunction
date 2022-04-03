#> abchc:menu/modifiers/core/degradation/speed/reset
# Reset degradation config score speed to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/degradation/**
# @context player

#> Reset
# If default was set, set score to default
execute if score degradation.speed abch.default matches -2147483648..2147483647 run scoreboard players operation degradation.speed abch.config = degradation.speed abch.default
# If default wasn't set, set score to 1
execute unless score degradation.speed abch.default matches -2147483648..2147483647 run scoreboard players set degradation.speed abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/degradation/config