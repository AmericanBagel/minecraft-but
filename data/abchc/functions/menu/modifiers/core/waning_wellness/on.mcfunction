#> abchc:menu/modifiers/core/waning_wellness/on
#Automatically generated toggle on function for waning_wellness
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set waning_wellness abch.toggle 1

# Run load function
function abchc:modifiers/waning_wellness/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/undefined