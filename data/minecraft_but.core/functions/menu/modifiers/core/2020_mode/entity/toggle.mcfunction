#> minecraft_but.coreraft_but.core:menu/modifiers/core/2020_mode/entity/toggle
# Toggle 2020_mode config score entity between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/2020_mode/**
# @context player

# Add score
scoreboard players add 2020_mode.entity minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score 2020_mode.entity minecraft_but.config matches 2.. run scoreboard players set 2020_mode.entity minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/2020_mode/config