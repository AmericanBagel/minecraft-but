#> minecraft_but.core:menu/modifiers/core/glowing/mobs/reset
# Reset glowing config score mobs to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/glowing/**
# @context player

#> Reset
# If default was set, set score to default
execute if score glowing.mobs minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation glowing.mobs minecraft_but.config = glowing.mobs minecraft_but.default
# If default wasn't set, set score to 0
execute unless score glowing.mobs minecraft_but.default matches -2147483648..2147483647 run scoreboard players set glowing.mobs minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/glowing/config