#> abchc:menu/modifiers/core/flying_skeletons/off
#Automatically generated toggle off function for flying_skeletons
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set flying_skeletons abch.toggle 0

# Run unload function
function abchc:modifiers/flying_skeletons/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page