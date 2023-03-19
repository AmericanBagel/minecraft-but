#> minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/dolphins_grace/reset
# Reset mermaid config score dolphins_grace to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.dolphins_grace minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation mermaid.dolphins_grace minecraft_but.config = mermaid.dolphins_grace minecraft_but.default
# If default wasn't set, set score to 0
execute unless score mermaid.dolphins_grace minecraft_but.default matches -2147483648..2147483647 run scoreboard players set mermaid.dolphins_grace minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/config