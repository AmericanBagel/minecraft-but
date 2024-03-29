#> minecraft_but.core:menu/modifiers/core/death_swap/log/toggle
# Toggle death_swap config score log between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/death_swap/**
# @context player

# Add score
scoreboard players add death_swap.log minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score death_swap.log minecraft_but.config matches 2.. run scoreboard players set death_swap.log minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/death_swap/config