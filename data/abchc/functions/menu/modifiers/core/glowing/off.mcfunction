#> abchc:menu/modifiers/core/glowing/off
#Automatically generated toggle off function for glowing
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set glowing abch.toggle 0

# Run unload function
function abchc:modifiers/glowing/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page