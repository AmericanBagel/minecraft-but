#> abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle
# Toggle mermaid config score dolphins_grace between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

# Add score
scoreboard players add mermaid.dolphins_grace abch.config 1

# If score goes above 1, set it to 0
execute if score mermaid.dolphins_grace abch.config matches 2.. run scoreboard players set mermaid.dolphins_grace abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mermaid/config