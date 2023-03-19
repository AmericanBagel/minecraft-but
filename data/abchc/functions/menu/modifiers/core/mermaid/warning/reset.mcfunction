#> abchc:menu/modifiers/core/mermaid/warning/reset
# Reset mermaid config score warning to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.warning abch.default matches -2147483648..2147483647 run scoreboard players operation mermaid.warning abch.config = mermaid.warning abch.default
# If default wasn't set, set score to 0
execute unless score mermaid.warning abch.default matches -2147483648..2147483647 run scoreboard players set mermaid.warning abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/mermaid/config