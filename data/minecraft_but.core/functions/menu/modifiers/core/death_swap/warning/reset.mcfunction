#> minecraft_but.core:menu/modifiers/core/death_swap/warning/reset
# Reset death_swap config score warning to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/death_swap/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_swap.warning minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation death_swap.warning minecraft_but.config = death_swap.warning minecraft_but.default
# If default wasn't set, set score to 0
execute unless score death_swap.warning minecraft_but.default matches -2147483648..2147483647 run scoreboard players set death_swap.warning minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/death_swap/config