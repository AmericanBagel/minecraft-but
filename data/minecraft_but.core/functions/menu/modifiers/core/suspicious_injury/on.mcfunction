#> minecraft_but.core:menu/modifiers/core/suspicious_injury/on
#Automatically generated toggle on function for suspicious_injury
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set suspicious_injury minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/suspicious_injury/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/effects