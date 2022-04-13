#> abchc:menu/modifiers/core/fire_walker/rate/reset
# Reset fire_walker config score rate to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/fire_walker/**
# @context player

#> Reset
# If default was set, set score to default
execute if score fire_walker.rate abch.default matches -2147483648..2147483647 run scoreboard players operation fire_walker.rate abch.config = fire_walker.rate abch.default
# If default wasn't set, set score to 1
execute unless score fire_walker.rate abch.default matches -2147483648..2147483647 run scoreboard players set fire_walker.rate abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/fire_walker/config