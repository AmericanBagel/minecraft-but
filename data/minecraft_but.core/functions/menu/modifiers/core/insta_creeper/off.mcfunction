#> minecraft_but.core:menu/modifiers/core/insta_creeper/off
#Automatically generated toggle off function for insta_creeper
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set insta_creeper minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/insta_creeper/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page