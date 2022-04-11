#> abchc:menu/modifiers/core/tnt_bats/on
#Automatically generated toggle on function for tnt_bats
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tnt_bats abch.toggle 1

# Run load function
function abchc:modifiers/tnt_bats/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page