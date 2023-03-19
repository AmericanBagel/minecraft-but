#> minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/warning/reset
# Reset mermaid config score warning to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/**
# @context player

#> Reset
# If default was set, set score to default
execute if score mermaid.warning minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation mermaid.warning minecraft_but.config = mermaid.warning minecraft_but.default
# If default wasn't set, set score to 0
execute unless score mermaid.warning minecraft_but.default matches -2147483648..2147483647 run scoreboard players set mermaid.warning minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mermaid/config