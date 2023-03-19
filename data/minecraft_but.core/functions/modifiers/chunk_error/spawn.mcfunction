#> minecraft_but.core:modifiers/chunk_error/spawn
# Spawn chunk error marker and wipe the chunk
# @within minecraft_but.core:modifiers/chunk_error/main
summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.chunk_error.marker"}', Tags: [ "minecraft_but.chunk_error.marker" ]}
# spreadplayers ~ ~ 40 80 false @e[ type=armor_stand, name="minecraft_but.chunk_error.marker" ]

#> Start loop of locating and repeating if a player is in the chunk or of the chunk is already deleted
execute as @e[tag=minecraft_but.chunk_error.marker] at @s run function minecraft_but.core:modifiers/chunk_error/recursion