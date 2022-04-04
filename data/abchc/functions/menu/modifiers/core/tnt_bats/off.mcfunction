#> abchc:menu/modifiers/core/tnt_bats/off
#Automatically generated toggle off function for tnt_bats
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tnt_bats abch.toggle 0

# Run unload function
function abchc:modifiers/tnt_bats/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory