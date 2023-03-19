#> minecraft_but.core:menu/modifiers/core/confetti_funeral/on
#Automatically generated toggle on function for confetti_funeral
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set confetti_funeral minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/confetti_funeral/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc