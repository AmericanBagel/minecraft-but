#> minecraft_but.core:menu/modifiers/core/ytpwyl/off
#Automatically generated toggle off function for ytpwyl
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set ytpwyl minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/ytpwyl/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page