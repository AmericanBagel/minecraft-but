#> abchc:menu/modifiers/core/2020_mode/player/toggle
# Toggle 2020_mode config score player between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/2020_mode/**
# @context player

# Add score
scoreboard players add 2020_mode.player abch.config 1

# If score goes above 1, set it to 0
execute if score 2020_mode.player abch.config matches 2.. run scoreboard players set 2020_mode.player abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/2020_mode/config