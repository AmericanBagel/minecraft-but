#> abchc:menu/modifiers/core/death_orb/corrupt/toggle
# Toggle death_orb config score corrupt between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_orb/**
# @context player

# Add score
scoreboard players add death_orb.corrupt abch.config 1

# If score goes above 1, set it to 0
execute if score death_orb.corrupt abch.config matches 2.. run scoreboard players set death_orb.corrupt abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/death_orb/config