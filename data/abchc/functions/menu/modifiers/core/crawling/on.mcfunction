#> abchc:menu/modifiers/core/crawling/on
#Automatically generated toggle on function for crawling
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set crawling abch.toggle 1

# Run load function
function abchc:modifiers/crawling/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page