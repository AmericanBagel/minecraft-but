#> minecraft_but.core:menu/modifiers/core/delicate_explosives/on
#Automatically generated toggle on function for delicate_explosives
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set delicate_explosives minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/delicate_explosives/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page