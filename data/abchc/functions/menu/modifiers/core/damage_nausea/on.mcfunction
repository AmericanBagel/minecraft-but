#> abchc:menu/modifiers/core/damage_nausea/on
#Automatically generated toggle on function for damage_nausea
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set damage_nausea abch.toggle 1

# Run load function
function abchc:modifiers/damage_nausea/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory