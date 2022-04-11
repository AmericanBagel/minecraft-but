#> abchc:menu/modifiers/core/reverse_gravity/on
#Automatically generated toggle on function for reverse_gravity
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set reverse_gravity abch.toggle 1

# Run load function
function abchc:modifiers/reverse_gravity/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page