#> abchc:menu/modifiers/core/toxic_water/warning/reset
# Reset toxic_water config score warning to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/toxic_water/**
# @context player

#> Reset
# If default was set, set score to default
execute if score toxic_water.warning abch.default matches -2147483648..2147483647 run scoreboard players operation toxic_water.warning abch.config = toxic_water.warning abch.default
# If default wasn't set, set score to 0
execute unless score toxic_water.warning abch.default matches -2147483648..2147483647 run scoreboard players set toxic_water.warning abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/toxic_water/config