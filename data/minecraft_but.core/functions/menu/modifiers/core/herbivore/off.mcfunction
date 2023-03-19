#> minecraft_but.core:menu/modifiers/core/herbivore/off
#Automatically generated toggle off function for herbivore
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set herbivore minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/herbivore/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges