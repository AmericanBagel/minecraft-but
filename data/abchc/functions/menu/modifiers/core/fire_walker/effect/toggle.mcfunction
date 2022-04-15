#> abchc:menu/modifiers/core/fire_walker/effect/toggle
# Toggle fire_walker config score effect between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/fire_walker/**
# @context player

# Add score
scoreboard players add fire_walker.effect abch.config 1

# If score goes above 1, set it to 0
execute if score fire_walker.effect abch.config matches 2.. run scoreboard players set fire_walker.effect abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/fire_walker/config