#> minecraft_but.core:menu/modifiers/core/bedrock_touch/on
#Automatically generated toggle on function for bedrock_touch
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set bedrock_touch minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/bedrock_touch/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc