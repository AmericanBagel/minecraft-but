#> minecraft_but.core:menu/modifiers/core/glowing/players/reset
# Reset glowing config score players to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/glowing/**
# @context player

#> Reset
# If default was set, set score to default
execute if score glowing.players minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation glowing.players minecraft_but.config = glowing.players minecraft_but.default
# If default wasn't set, set score to 0
execute unless score glowing.players minecraft_but.default matches -2147483648..2147483647 run scoreboard players set glowing.players minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/glowing/config