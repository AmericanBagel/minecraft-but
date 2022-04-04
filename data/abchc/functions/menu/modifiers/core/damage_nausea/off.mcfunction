#> abchc:menu/modifiers/core/damage_nausea/off
#Automatically generated toggle off function for damage_nausea
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set damage_nausea abch.toggle 0

# Run unload function
function abchc:modifiers/damage_nausea/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory