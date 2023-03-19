#> abchc:menu/modifiers/core/mermaid/rain/reset
# Reset mermaid config score rain to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.rain abch.default matches -2147483648..2147483647 run scoreboard players operation mermaid.rain abch.config = mermaid.rain abch.default
# If default wasn't set, set score to 0
execute unless score mermaid.rain abch.default matches -2147483648..2147483647 run scoreboard players set mermaid.rain abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/mermaid/config