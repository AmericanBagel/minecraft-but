#> minecraft_but.core:menu/modifiers/core/crawling/off
#Automatically generated toggle off function for crawling
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set crawling minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/crawling/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges