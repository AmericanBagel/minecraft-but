#> abchc:menu/actions/toggle
# Turn datapack on or off
# @within abchc:menu/**
# @context menu player

function abchc:menu/actions/click

execute if score .global abch.toggle matches 0 run scoreboard players set #temp abch.toggle 1
execute if score .global abch.toggle matches 1 run scoreboard players set #temp abch.toggle 0

scoreboard players operation .global abch.toggle = #temp abch.toggle

function abchc:menu/directory