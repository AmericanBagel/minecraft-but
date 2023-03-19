#> abchc:menu/modifiers/core/crawling/creative/toggle
# Toggle crawling config score creative between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/crawling/**
# @context player

# Add score
scoreboard players add crawling.creative abch.config 1

# If score goes above 1, set it to 0
execute if score crawling.creative abch.config matches 2.. run scoreboard players set crawling.creative abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/crawling/config