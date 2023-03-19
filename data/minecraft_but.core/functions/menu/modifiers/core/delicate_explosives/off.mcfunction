#> minecraft_but.coreraft_but.core:menu/modifiers/core/delicate_explosives/off
#Automatically generated toggle off function for delicate_explosives
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set delicate_explosives minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/delicate_explosives/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page