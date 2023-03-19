#> abchc:menu/modifiers/core/death_swap/interval/reset
# Reset death_swap config score interval to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_swap.interval abch.default matches -2147483648..2147483647 run scoreboard players operation death_swap.interval abch.config = death_swap.interval abch.default
# If default wasn't set, set score to 1
execute unless score death_swap.interval abch.default matches -2147483648..2147483647 run scoreboard players set death_swap.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config