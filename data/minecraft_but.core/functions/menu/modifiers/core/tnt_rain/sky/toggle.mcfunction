#> minecraft_but.core:menu/modifiers/core/tnt_rain/sky/toggle
# Toggle tnt_rain config score sky between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

# Add score
scoreboard players add tnt_rain.sky minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score tnt_rain.sky minecraft_but.config matches 2.. run scoreboard players set tnt_rain.sky minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/tnt_rain/config