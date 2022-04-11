#> abchc:menu/modifiers/core/toxic/off
#Automatically generated toggle off function for toxic
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set toxic abch.toggle 0

# Run unload function
function abchc:modifiers/toxic/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page