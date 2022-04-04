#> abchc:menu/modifiers/core/death_swap/warning/toggle
# Toggle death_swap config score warning between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

# Add score
scoreboard players add death_swap.warning abch.config 1

# If score goes above 1, set it to 0
execute if score death_swap.warning abch.config matches 2.. run scoreboard players set death_swap.warning abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/death_swap/config