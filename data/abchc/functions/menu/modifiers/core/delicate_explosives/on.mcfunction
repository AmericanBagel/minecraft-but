#> abchc:menu/modifiers/core/delicate_explosives/on
#Automatically generated toggle on function for delicate_explosives
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set delicate_explosives abch.toggle 1

# Run load function
function abchc:modifiers/delicate_explosives/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page