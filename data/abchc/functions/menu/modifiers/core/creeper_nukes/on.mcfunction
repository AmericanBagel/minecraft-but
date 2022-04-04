#> abchc:menu/modifiers/core/creeper_nukes/on
#Automatically generated toggle on function for creeper_nukes
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_nukes abch.toggle 1

# Run load function
function abchc:modifiers/creeper_nukes/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory