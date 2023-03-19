#> abchc:menu/modifiers/core/deadly_falls/on
#Automatically generated toggle on function for deadly_falls
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set deadly_falls abch.toggle 1

# Run load function
function abchc:modifiers/deadly_falls/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/challenges