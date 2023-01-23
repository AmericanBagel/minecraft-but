#> minecraft_but.core:modifiers/keep_moving/current_pos
# Get player's current position
# @context player
# @within minecraft_but.core:modifiers/keep_moving/check
execute store result score $p minecraft_but.keep_moving.x run data get entity @s Pos[0] 100
execute store result score $p minecraft_but.keep_moving.y run data get entity @s Pos[1] 100
execute store result score $p minecraft_but.keep_moving.z run data get entity @s Pos[2] 100