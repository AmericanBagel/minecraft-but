#> minecraft_but.core:menu/modifiers/core/troglodyte/off
#Automatically generated toggle off function for troglodyte
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set troglodyte minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/troglodyte/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges