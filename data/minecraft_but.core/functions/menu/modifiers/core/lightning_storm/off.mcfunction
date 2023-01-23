#> minecraft_but.core:menu/modifiers/core/lightning_storm/off
#Automatically generated toggle off function for lightning_storm
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set lightning_storm minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/lightning_storm/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/chaos