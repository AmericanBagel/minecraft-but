#> abchc:menu/modifiers/core/mermaid/sfx/toggle
# Toggle mermaid config score sfx between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

# Add score
scoreboard players add mermaid.sfx abch.config 1

# If score goes above 1, set it to 0
execute if score mermaid.sfx abch.config matches 2.. run scoreboard players set mermaid.sfx abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mermaid/config