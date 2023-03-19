#> minecraft_but.coreraft_but.core:menu/modifiers/core/players_glow/on
#Automatically generated toggle on function for players_glow
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set players_glow minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/players_glow/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page