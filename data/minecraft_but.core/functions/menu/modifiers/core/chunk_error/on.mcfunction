#> minecraft_but.core:menu/modifiers/core/chunk_error/on
#Automatically generated toggle on function for chunk_error
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set chunk_error minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/chunk_error/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/undefined