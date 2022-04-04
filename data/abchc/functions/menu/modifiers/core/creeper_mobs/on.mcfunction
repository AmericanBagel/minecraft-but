#> abchc:menu/modifiers/core/creeper_mobs/on
#Automatically generated toggle on function for creeper_mobs
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_mobs abch.toggle 1

# Run load function
function abchc:modifiers/creeper_mobs/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory