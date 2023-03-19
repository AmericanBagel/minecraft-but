#> abchc:menu/modifiers/core/reverse_gravity/affect_entities/reset
# Reset reverse_gravity config score affect_entities to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/reverse_gravity/**
# @context player

#> Reset
# If default was set, set score to default
execute if score reverse_gravity.affect_entities abch.default matches -2147483648..2147483647 run scoreboard players operation reverse_gravity.affect_entities abch.config = reverse_gravity.affect_entities abch.default
# If default wasn't set, set score to 0
execute unless score reverse_gravity.affect_entities abch.default matches -2147483648..2147483647 run scoreboard players set reverse_gravity.affect_entities abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/reverse_gravity/config