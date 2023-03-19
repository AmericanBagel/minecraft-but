#> minecraft_but.core:modifiers/chunk_error/chance
# Random chance to destroy a chunk
# @within minecraft_but.core:modifiers/chunk_error/chance
# @context as at player

# Random number between 1 and 2000
# 2000 for percent (100) * ticks per second (20)
scoreboard players set $min random 1
scoreboard players set $max random 2000
function random:uniform

# If it's within config chance threshold, delete chunk
execute if score $out random <= chunk_error.chance minecraft_but.config run function minecraft_but.core:modifiers/chunk_error/spawn