#> minecraft_but.core:menu/modifiers/core/random_structures/sfx/reset
# Reset random_structures config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/random_structures/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random_structures.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation random_structures.sfx minecraft_but.config = random_structures.sfx minecraft_but.default
# If default wasn't set, set score to 0
execute unless score random_structures.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players set random_structures.sfx minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/random_structures/config