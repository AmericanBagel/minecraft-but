#> abchc:menu/modifiers/core/meteor/off
#Automatically generated toggle off function for meteor
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set meteor abch.toggle 0

# Run unload function
function abchc:modifiers/meteor/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page