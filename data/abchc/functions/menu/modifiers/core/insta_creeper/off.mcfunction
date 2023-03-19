#> abchc:menu/modifiers/core/insta_creeper/off
#Automatically generated toggle off function for insta_creeper
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set insta_creeper abch.toggle 0

# Run unload function
function abchc:modifiers/insta_creeper/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page