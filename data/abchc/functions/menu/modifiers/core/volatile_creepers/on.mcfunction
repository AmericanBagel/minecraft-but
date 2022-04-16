#> abchc:menu/modifiers/core/volatile_creepers/on
#Automatically generated toggle on function for volatile_creepers
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set volatile_creepers abch.toggle 1

# Run load function
function abchc:modifiers/volatile_creepers/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page