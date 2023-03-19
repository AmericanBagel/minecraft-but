#> abchc:menu/modifiers/core/schlatt_mode/on
#Automatically generated toggle on function for schlatt_mode
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set schlatt_mode abch.toggle 1

# Run load function
function abchc:modifiers/schlatt_mode/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic