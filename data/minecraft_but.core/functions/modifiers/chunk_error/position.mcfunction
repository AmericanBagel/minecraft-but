#> minecraft_but.core:modifiers/chunk_error/position
# Position the chunk error marker and wipe the chunk
# @within minecraft_but.core:modifiers/chunk_error/spawn
# @context as marker at player

# Get min and max
scoreboard players operation $min minecraft_but.chunk_error = chunk_error.min_spread minecraft_but.config
scoreboard players operation $max minecraft_but.chunk_error = chunk_error.max_spread minecraft_but.config

#> Random X and Y offset
# X offset
scoreboard players operation $min random = $min minecraft_but.chunk_error
scoreboard players operation $max random = $max minecraft_but.chunk_error
function random:uniform
execute if predicate random:coin_toss run scoreboard players operation $out random *= #-1 minecraft_but.math
execute store result score $X minecraft_but.chunk_error run data get entity @s Pos[0]
scoreboard players operation $X minecraft_but.chunk_error += $out random
execute store result entity @s Pos[0] double 1 run scoreboard players get $X minecraft_but.chunk_error

# Y offset
scoreboard players operation $min random = $min minecraft_but.chunk_error
scoreboard players operation $max random = $max minecraft_but.chunk_error
function random:uniform
execute if predicate random:coin_toss run scoreboard players operation $out random *= #-1 minecraft_but.math
execute store result score $Z minecraft_but.chunk_error run data get entity @s Pos[2]
scoreboard players operation $Z minecraft_but.chunk_error += $out random
execute store result entity @s Pos[2] double 1 run scoreboard players get $Z minecraft_but.chunk_error

#> Align to chunk origin
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625