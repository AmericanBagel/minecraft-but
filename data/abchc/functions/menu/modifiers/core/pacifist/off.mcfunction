#> abchc:menu/modifiers/core/pacifist/off
#Automatically generated toggle off function for pacifist
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set pacifist abch.toggle 0

# Run unload function
function abchc:modifiers/pacifist/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic