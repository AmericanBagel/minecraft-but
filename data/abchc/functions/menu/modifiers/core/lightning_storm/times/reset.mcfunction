#> abchc:menu/modifiers/core/lightning_storm/times/reset
# Reset lightning_storm config score times to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/lightning_storm/**
# @context player

#> Reset
# If default was set, set score to default
execute if score lightning_storm.times abch.default matches -2147483648..2147483647 run scoreboard players operation lightning_storm.times abch.config = lightning_storm.times abch.default
# If default wasn't set, set score to 1
execute unless score lightning_storm.times abch.default matches -2147483648..2147483647 run scoreboard players set lightning_storm.times abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/lightning_storm/config