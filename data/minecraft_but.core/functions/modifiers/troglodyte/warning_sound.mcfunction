#> minecraft_but.core:modifiers/troglodyte/warning_sound
# Danger tone to play when players in light
# @within minecraft_but.core:modifiers/troglodyte/mercy_warning
# @context player in light

execute if score $tick minecraft_but.troglodyte matches 8 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 0
execute if score $tick minecraft_but.troglodyte matches 8 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .66

execute if score $tick minecraft_but.troglodyte matches 13 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .33
execute if score $tick minecraft_but.troglodyte matches 13 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .33

execute if score $tick minecraft_but.troglodyte matches 17 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .66
execute if score $tick minecraft_but.troglodyte matches 17 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 0