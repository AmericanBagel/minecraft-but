#> minecraft_but.core:menu/modifiers/core/explosive_snowballs/off
#Automatically generated toggle off function for explosive_snowballs
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_snowballs minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/explosive_snowballs/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page