#> abchc:menu/modifiers/core/insta_creeper/on
#Automatically generated toggle on function for insta_creeper
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set insta_creeper abch.toggle 1

# Run load function
function abchc:modifiers/insta_creeper/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page