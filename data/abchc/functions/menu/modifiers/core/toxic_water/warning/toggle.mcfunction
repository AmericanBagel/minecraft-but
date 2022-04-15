#> abchc:menu/modifiers/core/toxic_water/warning/toggle
# Toggle toxic_water config score warning between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/toxic_water/**
# @context player

# Add score
scoreboard players add toxic_water.warning abch.config 1

# If score goes above 1, set it to 0
execute if score toxic_water.warning abch.config matches 2.. run scoreboard players set toxic_water.warning abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/toxic_water/config