#> abchc:menu/modifiers/core/deadly_falls/off
#Automatically generated toggle off function for deadly_falls
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set deadly_falls abch.toggle 0

# Run unload function
function abchc:modifiers/deadly_falls/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page