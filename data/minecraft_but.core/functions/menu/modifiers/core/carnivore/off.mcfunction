#> minecraft_but.core:menu/modifiers/core/carnivore/off
#Automatically generated toggle off function for carnivore
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set carnivore minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/carnivore/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges