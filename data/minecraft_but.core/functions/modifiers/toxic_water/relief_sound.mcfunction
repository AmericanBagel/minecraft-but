#> minecraft_but.core:modifiers/toxic_water/relief_sound
# Relief sound to play when players get back in water
# @within minecraft_but.core:modifiers/toxic_water/out_of_water
# @context player out of water

execute if score @s minecraft_but.toxic_water.timer matches -5 run playsound block.note_block.flute master @s ~ ~ ~ .5 0
execute if score @s minecraft_but.toxic_water.timer matches -5 run playsound block.note_block.chime master @s ~ ~ ~ .5 0

execute if score @s minecraft_but.toxic_water.timer matches -10 run playsound block.note_block.flute master @s ~ ~ ~ .5 .33
execute if score @s minecraft_but.toxic_water.timer matches -10 run playsound block.note_block.chime master @s ~ ~ ~ .5 .33

execute if score @s minecraft_but.toxic_water.timer matches -15 run playsound block.note_block.flute master @s ~ ~ ~ .5 .66
execute if score @s minecraft_but.toxic_water.timer matches -15 run playsound block.note_block.chime master @s ~ ~ ~ .5 .66