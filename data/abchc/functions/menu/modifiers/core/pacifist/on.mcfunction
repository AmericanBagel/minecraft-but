#> abchc:menu/modifiers/core/pacifist/on
#Automatically generated toggle on function for pacifist
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set pacifist abch.toggle 1

# Run load function
function abchc:modifiers/pacifist/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic