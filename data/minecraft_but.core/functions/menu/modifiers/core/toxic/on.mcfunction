#> minecraft_but.core:menu/modifiers/core/toxic/on
#Automatically generated toggle on function for toxic
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set toxic minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/toxic/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page