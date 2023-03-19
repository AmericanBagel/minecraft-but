#> abchc:menu/modifiers/core/anvil_rain/relative/toggle
# Toggle anvil_rain config score relative between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/anvil_rain/**
# @context player

# Add score
scoreboard players add anvil_rain.relative abch.config 1

# If score goes above 1, set it to 0
execute if score anvil_rain.relative abch.config matches 2.. run scoreboard players set anvil_rain.relative abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/anvil_rain/config