#> abchc:menu/modifiers/core/fire_walker/effect/reset
# Reset fire_walker config score effect to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/fire_walker/**
# @context player

#> Reset
# If default was set, set score to default
execute if score fire_walker.effect abch.default matches -2147483648..2147483647 run scoreboard players operation fire_walker.effect abch.config = fire_walker.effect abch.default
# If default wasn't set, set score to 0
execute unless score fire_walker.effect abch.default matches -2147483648..2147483647 run scoreboard players set fire_walker.effect abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/fire_walker/config