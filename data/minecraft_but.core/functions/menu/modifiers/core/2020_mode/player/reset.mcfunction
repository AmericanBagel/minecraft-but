#> minecraft_but.core:menu/modifiers/core/2020_mode/player/reset
# Reset 2020_mode config score player to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/2020_mode/**
# @context player

#> Reset
# If default was set, set score to default
execute if score 2020_mode.player minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation 2020_mode.player minecraft_but.config = 2020_mode.player minecraft_but.default
# If default wasn't set, set score to 0
execute unless score 2020_mode.player minecraft_but.default matches -2147483648..2147483647 run scoreboard players set 2020_mode.player minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/2020_mode/config