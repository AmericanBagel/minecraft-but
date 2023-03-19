#> minecraft_but.coreraft_but.core:menu/actions/toggle
# Turn datapack on or off
# @within minecraft_but.coreraft_but.core:menu/**
# @context menu player

function minecraft_but.coreraft_but.core:menu/actions/click

execute if score .global minecraft_but.toggle matches 0 run scoreboard players set #temp minecraft_but.toggle 1
execute if score .global minecraft_but.toggle matches 1 run scoreboard players set #temp minecraft_but.toggle 0

scoreboard players operation .global minecraft_but.toggle = #temp minecraft_but.toggle

function minecraft_but.coreraft_but.core:menu/find_page