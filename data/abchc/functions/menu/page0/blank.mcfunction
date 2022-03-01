stopsound @p[tag=abch.menu.this] player minecraft:ui.button.click
playsound block.note_block.bass player @p[tag=abch.menu.this] ~ ~ ~ 1 0
execute if score .global abch.debug matches 1 run say blank