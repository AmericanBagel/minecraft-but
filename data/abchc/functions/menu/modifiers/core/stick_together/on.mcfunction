#> abchc:menu/modifiers/core/stick_together/on
#Automatically generated toggle on function for stick_together
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set stick_together abch.toggle 1

# Run load function
function abchc:modifiers/stick_together/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page