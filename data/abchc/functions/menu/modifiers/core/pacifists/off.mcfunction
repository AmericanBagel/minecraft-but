#> abchc:menu/modifiers/core/pacifists/off
#Automatically generated toggle off function for pacifists
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set pacifists abch.toggle 0

# Run unload function
function abchc:modifiers/pacifists/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page