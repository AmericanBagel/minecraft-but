#> minecraft_but.core:menu/modifiers/core/chunk_error/off
#Automatically generated toggle off function for chunk_error
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set chunk_error minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/chunk_error/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/undefined