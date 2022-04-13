#> abchc:menu/modifiers/core/feature_fanatic/sfx/toggle
# Toggle feature_fanatic config score sfx between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

# Add score
scoreboard players add feature_fanatic.sfx abch.config 1

# If score goes above 1, set it to 0
execute if score feature_fanatic.sfx abch.config matches 2.. run scoreboard players set feature_fanatic.sfx abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/feature_fanatic/config