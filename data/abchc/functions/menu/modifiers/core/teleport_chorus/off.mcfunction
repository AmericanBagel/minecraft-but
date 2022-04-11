#> abchc:menu/modifiers/core/teleport_chorus/off
#Automatically generated toggle off function for teleport_chorus
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set teleport_chorus abch.toggle 0

# Run unload function
function abchc:modifiers/teleport_chorus/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page