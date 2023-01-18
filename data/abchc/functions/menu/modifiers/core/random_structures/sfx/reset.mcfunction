#> abchc:menu/modifiers/core/random_structures/sfx/reset
# Reset random_structures config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_structures/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random_structures.sfx abch.default matches -2147483648..2147483647 run scoreboard players operation random_structures.sfx abch.config = random_structures.sfx abch.default
# If default wasn't set, set score to 0
execute unless score random_structures.sfx abch.default matches -2147483648..2147483647 run scoreboard players set random_structures.sfx abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_structures/config