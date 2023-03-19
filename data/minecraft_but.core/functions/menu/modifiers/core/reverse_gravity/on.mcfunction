#> minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/on
#Automatically generated toggle on function for reverse_gravity
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set reverse_gravity minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/reverse_gravity/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page