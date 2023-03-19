#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/warning/toggle
# Toggle death_swap config score warning between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/**
# @context player

# Add score
scoreboard players add death_swap.warning minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score death_swap.warning minecraft_but.config matches 2.. run scoreboard players set death_swap.warning minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/config