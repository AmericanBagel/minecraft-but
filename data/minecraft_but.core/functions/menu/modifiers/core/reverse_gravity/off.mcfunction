#> minecraft_but.core:menu/modifiers/core/reverse_gravity/off
#Automatically generated toggle off function for reverse_gravity
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set reverse_gravity minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/reverse_gravity/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page