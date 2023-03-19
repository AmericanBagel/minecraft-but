#> minecraft_but.coreraft_but.core:menu/modifiers/core/mobs_glow/on
#Automatically generated toggle on function for mobs_glow
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set mobs_glow minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/mobs_glow/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page