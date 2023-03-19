#> minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/creative/toggle
# Toggle crawling config score creative between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/**
# @context player

# Add score
scoreboard players add crawling.creative minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score crawling.creative minecraft_but.config matches 2.. run scoreboard players set crawling.creative minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/config