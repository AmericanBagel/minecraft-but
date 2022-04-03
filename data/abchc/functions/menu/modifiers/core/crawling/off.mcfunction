#> abchc:menu/modifiers/core/crawling/off
#Automatically generated toggle off function for crawling
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set crawling abch.toggle 0

# Run unload function
function abchc:modifiers/crawling/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory