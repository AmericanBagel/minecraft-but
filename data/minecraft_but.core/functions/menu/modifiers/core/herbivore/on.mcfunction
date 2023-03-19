#> minecraft_but.coreraft_but.core:menu/modifiers/core/herbivore/on
#Automatically generated toggle on function for herbivore
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set herbivore minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/herbivore/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges