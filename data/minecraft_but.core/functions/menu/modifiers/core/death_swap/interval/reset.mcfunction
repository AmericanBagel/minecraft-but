#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/interval/reset
# Reset death_swap config score interval to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_swap.interval minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation death_swap.interval minecraft_but.config = death_swap.interval minecraft_but.default
# If default wasn't set, set score to 1
execute unless score death_swap.interval minecraft_but.default matches -2147483648..2147483647 run scoreboard players set death_swap.interval minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/config