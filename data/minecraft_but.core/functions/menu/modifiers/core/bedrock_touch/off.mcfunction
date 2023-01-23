#> minecraft_but.core:menu/modifiers/core/bedrock_touch/off
#Automatically generated toggle off function for bedrock_touch
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set bedrock_touch minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/bedrock_touch/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc