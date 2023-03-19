#> abchc:menu/modifiers/core/bedrock_touch/on
#Automatically generated toggle on function for bedrock_touch
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set bedrock_touch abch.toggle 1

# Run load function
function abchc:modifiers/bedrock_touch/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/misc