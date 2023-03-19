#> minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/keep/toggle
# Toggle anvil_rain config score keep between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

# Add score
scoreboard players add anvil_rain.keep minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score anvil_rain.keep minecraft_but.config matches 2.. run scoreboard players set anvil_rain.keep minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/config