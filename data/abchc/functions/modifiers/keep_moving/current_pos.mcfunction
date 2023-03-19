#> abchc:modifiers/keep_moving/current_pos
# Get player's current position
# @context player
# @within abchc:modifiers/keep_moving/check
execute store result score $p abch.keep_moving.x run data get entity @s Pos[0] 100
execute store result score $p abch.keep_moving.y run data get entity @s Pos[1] 100
execute store result score $p abch.keep_moving.z run data get entity @s Pos[2] 100