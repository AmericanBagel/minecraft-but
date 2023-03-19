#> minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/on
#Automatically generated toggle on function for crawling
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set crawling minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/crawling/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges