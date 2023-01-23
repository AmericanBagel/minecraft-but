#> minecraft_but.core:menu/modifiers/core/random_effect/on
#Automatically generated toggle on function for random_effect
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_effect minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/random_effect/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page