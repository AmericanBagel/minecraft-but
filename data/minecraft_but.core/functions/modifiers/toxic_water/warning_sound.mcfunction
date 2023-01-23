#> minecraft_but.core:modifiers/toxic_water/warning_sound
# Danger tone to play when players are out of water
# @within minecraft_but.core:modifiers/toxic_water/out_of_water
# @context player out of water

execute if score $tick minecraft_but.toxic_water matches 8 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .66
execute if score $tick minecraft_but.toxic_water matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .66

execute if score $tick minecraft_but.toxic_water matches 13 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .33
execute if score $tick minecraft_but.toxic_water matches 13 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .33

execute if score $tick minecraft_but.toxic_water matches 17 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 0
execute if score $tick minecraft_but.toxic_water matches 17 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 0