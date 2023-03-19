#> minecraft_but.coreraft_but.core:menu/modifiers/core/insta_creeper/on
#Automatically generated toggle on function for insta_creeper
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set insta_creeper minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/insta_creeper/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page