#> abchc:menu/modifiers/core/keep_moving/on
#Automatically generated toggle on function for keep_moving
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set keep_moving abch.toggle 1

# Run load function
function abchc:modifiers/keep_moving/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page