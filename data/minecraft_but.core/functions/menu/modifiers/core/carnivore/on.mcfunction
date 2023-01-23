#> minecraft_but.core:menu/modifiers/core/carnivore/on
#Automatically generated toggle on function for carnivore
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set carnivore minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/carnivore/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges