#> abchc:menu/modifiers/core/stick_together/off
#Automatically generated toggle off function for stick_together
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set stick_together abch.toggle 0

# Run unload function
function abchc:modifiers/stick_together/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page