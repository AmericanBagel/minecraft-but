stopsound @a[tag=!blacklist,tag=!global.ignore] player minecraft:ui.button.click
playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score .global abch.debug matches 1 run say blank
