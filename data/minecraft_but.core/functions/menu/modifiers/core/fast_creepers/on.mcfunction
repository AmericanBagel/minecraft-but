#> minecraft_but.core:menu/modifiers/core/fast_creepers/on
#Automatically generated toggle on function for fast_creepers
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fast_creepers minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/fast_creepers/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page