#> abchc:menu/modifiers/core/delicate_explosives/off
#Automatically generated toggle off function for delicate_explosives
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set delicate_explosives abch.toggle 0

# Run unload function
function abchc:modifiers/delicate_explosives/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory