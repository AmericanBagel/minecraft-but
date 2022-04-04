#> abchc:menu/modifiers/core/death_swap/warning/reset
# Reset death_swap config score warning to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_swap.warning abch.default matches -2147483648..2147483647 run scoreboard players operation death_swap.warning abch.config = death_swap.warning abch.default
# If default wasn't set, set score to 0
execute unless score death_swap.warning abch.default matches -2147483648..2147483647 run scoreboard players set death_swap.warning abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config