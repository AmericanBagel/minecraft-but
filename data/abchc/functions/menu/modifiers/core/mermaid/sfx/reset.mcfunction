#> abchc:menu/modifiers/core/mermaid/sfx/reset
# Reset mermaid config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.sfx abch.default matches -2147483648..2147483647 run scoreboard players operation mermaid.sfx abch.config = mermaid.sfx abch.default
# If default wasn't set, set score to 0
execute unless score mermaid.sfx abch.default matches -2147483648..2147483647 run scoreboard players set mermaid.sfx abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/mermaid/config