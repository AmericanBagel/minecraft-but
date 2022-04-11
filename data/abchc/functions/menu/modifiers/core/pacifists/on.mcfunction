#> abchc:menu/modifiers/core/pacifists/on
#Automatically generated toggle on function for pacifists
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set pacifists abch.toggle 1

# Run load function
function abchc:modifiers/pacifists/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page