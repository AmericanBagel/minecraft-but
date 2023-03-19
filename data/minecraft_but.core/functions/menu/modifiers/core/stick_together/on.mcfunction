#> minecraft_but.core:menu/modifiers/core/stick_together/on
#Automatically generated toggle on function for stick_together
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set stick_together minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/stick_together/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page