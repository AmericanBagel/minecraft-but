#> abchc:menu/modifiers/core/look_straight/x/toggle
# Toggle look_straight config score x between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/look_straight/**
# @context player

# Add score
scoreboard players add look_straight.x abch.config 1

# If score goes above 1, set it to 0
execute if score look_straight.x abch.config matches 2.. run scoreboard players set look_straight.x abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/look_straight/config