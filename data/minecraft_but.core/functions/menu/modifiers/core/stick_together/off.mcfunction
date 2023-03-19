#> minecraft_but.coreraft_but.core:menu/modifiers/core/stick_together/off
#Automatically generated toggle off function for stick_together
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set stick_together minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/stick_together/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page