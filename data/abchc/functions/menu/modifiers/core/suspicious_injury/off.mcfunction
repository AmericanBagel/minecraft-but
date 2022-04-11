#> abchc:menu/modifiers/core/suspicious_injury/off
#Automatically generated toggle off function for suspicious_injury
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set suspicious_injury abch.toggle 0

# Run unload function
function abchc:modifiers/suspicious_injury/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page