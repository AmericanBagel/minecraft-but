#> minecraft_but.core:menu/modifiers/core/mermaid/sfx/toggle
# Toggle mermaid config score sfx between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/mermaid/**
# @context player

# Add score
scoreboard players add mermaid.sfx minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score mermaid.sfx minecraft_but.config matches 2.. run scoreboard players set mermaid.sfx minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mermaid/config