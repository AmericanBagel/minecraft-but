#> minecraft_but.coreraft_but.core:modifiers/keep_moving/later_pos
# Store player's position into scores for next tick
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/keep_moving/check
execute store result score @s minecraft_but.keep_moving.x run data get entity @s Pos[0] 100
execute store result score @s minecraft_but.keep_moving.y run data get entity @s Pos[1] 100
execute store result score @s minecraft_but.keep_moving.z run data get entity @s Pos[2] 100