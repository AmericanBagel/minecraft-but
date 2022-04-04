#> abchc:menu/modifiers/core/suspicious_injury/on
#Automatically generated toggle on function for suspicious_injury
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set suspicious_injury abch.toggle 1

# Run load function
function abchc:modifiers/suspicious_injury/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory