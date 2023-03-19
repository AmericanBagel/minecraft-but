#> abchc:menu/modifiers/core/toxic/on
#Automatically generated toggle on function for toxic
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set toxic abch.toggle 1

# Run load function
function abchc:modifiers/toxic/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page