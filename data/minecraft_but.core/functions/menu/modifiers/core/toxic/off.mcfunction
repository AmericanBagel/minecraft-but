#> minecraft_but.coreraft_but.core:menu/modifiers/core/toxic/off
#Automatically generated toggle off function for toxic
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set toxic minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/toxic/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page