#> abchc:menu/modifiers/core/ender_blood/off
#Automatically generated toggle off function for ender_blood
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set ender_blood abch.toggle 0

# Run unload function
function abchc:modifiers/ender_blood/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory