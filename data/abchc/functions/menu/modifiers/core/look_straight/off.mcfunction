#> abchc:menu/modifiers/core/look_straight/off
#Automatically generated toggle off function for look_straight
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set look_straight abch.toggle 0

# Run unload function
function abchc:modifiers/look_straight/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page