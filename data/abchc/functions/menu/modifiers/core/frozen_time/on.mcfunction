#> abchc:menu/modifiers/core/frozen_time/on
#Automatically generated toggle on function for frozen_time
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set frozen_time abch.toggle 1

# Run load function
function abchc:modifiers/frozen_time/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page