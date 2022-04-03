#> abchc:menu/modifiers/core/bedrock_touch/off
#Automatically generated toggle off function for bedrock_touch
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set bedrock_touch abch.toggle 0

# Run unload function
function abchc:modifiers/bedrock_touch/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory