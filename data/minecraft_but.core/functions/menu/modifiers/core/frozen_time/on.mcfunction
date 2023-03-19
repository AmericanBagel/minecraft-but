#> minecraft_but.coreraft_but.core:menu/modifiers/core/frozen_time/on
#Automatically generated toggle on function for frozen_time
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set frozen_time minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/frozen_time/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc