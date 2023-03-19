#> minecraft_but.core:menu/modifiers/core/glowing/off
#Automatically generated toggle off function for glowing
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set glowing minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/glowing/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/effects