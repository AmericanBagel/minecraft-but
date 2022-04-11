#> abchc:menu/modifiers/core/ender_blood/on
#Automatically generated toggle on function for ender_blood
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set ender_blood abch.toggle 1

# Run load function
function abchc:modifiers/ender_blood/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page