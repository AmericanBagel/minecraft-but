#> minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/sfx/reset
# Reset mermaid config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation mermaid.sfx minecraft_but.config = mermaid.sfx minecraft_but.default
# If default wasn't set, set score to 0
execute unless score mermaid.sfx minecraft_but.default matches -2147483648..2147483647 run scoreboard players set mermaid.sfx minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/config