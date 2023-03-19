#> minecraft_but.core:modifiers/chunk_error/recursion
# Remove previous recursion tag
tag @s remove minecraft_but.chunk_error.recurse

# Increase score
scoreboard players add @s minecraft_but.chunk_error.total 1

# Position marker
#tellraw @a {"score":{"name":"@s","objective":"minecraft_but.chunk_error.total"}}
execute as @s at @s run function minecraft_but.core:modifiers/chunk_error/position
#tellraw @a [{"text":"Coords: "},{"entity":"@s","nbt":"Pos[0]", "color":"green"},{"text":", "},{"entity":"@s","nbt":"Pos[1]", "color":"aqua"},{"text":", "},{"entity":"@s","nbt":"Pos[2]", "color":"red"}]

#> Check if marker should loop again
# Repeat if this chunk is already deleted
execute at @s if score @s minecraft_but.chunk_error.total < chunk_error.recursion_limit minecraft_but.config if block ~ -63 ~ #minecraft_but.core:air run tag @s add minecraft_but.chunk_error.recurse

# Repeat if a player is in or near the chunk
#execute at @s positioned ~ 0 ~ if score @s minecraft_but.chunk_error.total < chunk_error.recursion_limit minecraft_but.config if entity @a[dx=14,dy=320,dz=14] run tag @s add minecraft_but.chunk_error.recurse

#> Loop ending
# If there is no player and the chunk is not deleted yet, delete it
execute at @s unless entity @s[tag=minecraft_but.chunk_error.recurse] run function minecraft_but.core:modifiers/chunk_error/error

# If the limit has been exceeded, delete it
execute at @s if score @s minecraft_but.chunk_error.total >= chunk_error.recursion_limit minecraft_but.config run kill @s

#> Loop again
execute at @s if score @s minecraft_but.chunk_error.total < chunk_error.recursion_limit minecraft_but.config if entity @s[tag=minecraft_but.chunk_error.recurse] run function minecraft_but.core:modifiers/chunk_error/recursion