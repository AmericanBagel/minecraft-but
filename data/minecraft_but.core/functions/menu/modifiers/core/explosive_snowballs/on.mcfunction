#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_snowballs/on
#Automatically generated toggle on function for explosive_snowballs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_snowballs minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/explosive_snowballs/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page