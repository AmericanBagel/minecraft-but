#> abchc:modifiers/mermaid/relief_sound
# Relief sound to play when players get back in water
# @within abchc:modifiers/mermaid/out_of_water
# @context player out of water

execute if score @s abch.mermaid.timer matches -5 run playsound block.note_block.flute master @s ~ ~ ~ .5 0
execute if score @s abch.mermaid.timer matches -5 run playsound block.note_block.chime master @s ~ ~ ~ .5 0

execute if score @s abch.mermaid.timer matches -10 run playsound block.note_block.flute master @s ~ ~ ~ .5 .33
execute if score @s abch.mermaid.timer matches -10 run playsound block.note_block.chime master @s ~ ~ ~ .5 .33

execute if score @s abch.mermaid.timer matches -15 run playsound block.note_block.flute master @s ~ ~ ~ .5 .66
execute if score @s abch.mermaid.timer matches -15 run playsound block.note_block.chime master @s ~ ~ ~ .5 .66