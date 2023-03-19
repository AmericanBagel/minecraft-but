#> abchc:menu/modifiers/core/reverse_gravity/affect_players/toggle
# Toggle reverse_gravity config score affect_players between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/reverse_gravity/**
# @context player

# Add score
scoreboard players add reverse_gravity.affect_players abch.config 1

# If score goes above 1, set it to 0
execute if score reverse_gravity.affect_players abch.config matches 2.. run scoreboard players set reverse_gravity.affect_players abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/reverse_gravity/config