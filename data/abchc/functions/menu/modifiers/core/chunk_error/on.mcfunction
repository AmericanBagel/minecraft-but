#> abchc:menu/modifiers/core/chunk_error/on
#Automatically generated toggle on function for chunk_error
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set chunk_error abch.toggle 1

# Run load function
function abchc:modifiers/chunk_error/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory