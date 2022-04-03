#> abchc:menu/modifiers/core/frozen_time/off
#Automatically generated toggle off function for frozen_time
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set frozen_time abch.toggle 0

# Run unload function
function abchc:modifiers/frozen_time/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory