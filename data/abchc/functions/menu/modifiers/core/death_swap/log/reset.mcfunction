#> abchc:menu/modifiers/core/death_swap/log/reset
# Reset death_swap config score log to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_swap.log abch.default matches -2147483648..2147483647 run scoreboard players operation death_swap.log abch.config = death_swap.log abch.default
# If default wasn't set, set score to 0
execute unless score death_swap.log abch.default matches -2147483648..2147483647 run scoreboard players set death_swap.log abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config