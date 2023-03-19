summon armor_stand ~ ~ ~ {CustomName: '{"text":"minecraft_but.chunkError"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b}
spreadplayers ~ ~ 40 80 false @e[ type=armor_stand, name="minecraft_but.chunkError" ]

#Gets armor stand's position divided by 16, leaving out decimals, and puts that position multiplied by 16 back into the armor stand, therefore aligning it with 0,0 in the chunk.
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

#Uses recursion to check for void.
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s positioned ~ 256 ~ run minecraft_but.coreion minecraft_but.core:modifiers/chunk_error/recursion

execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] store result score @s minecraft_but.chunk_error.x run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] store result score @s minecraft_but.chunk_error.z run data get entity @s Pos[2] 0.0625

execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] store result score @s minecraft_but.chunk_error.x run data get entity @s Pos[0] 0.0625
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] store result score @s minecraft_but.chunk_error.z run data get entity @s Pos[2] 0.0625

execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players reset @s minecraft_but.chunk_error.total
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players operation @s minecraft_but.chunk_error.total = @s minecraft_but.chunk_error.x
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players operation @s minecraft_but.chunk_error.total *= @s minecraft_but.chunk_error.z

execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players reset @p minecraft_but.chunk_error.total
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players operation @p minecraft_but.chunk_error.total = @p minecraft_but.chunk_error.x
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run scoreboard players operation @p minecraft_but.chunk_error.total *= @p minecraft_but.chunk_error.z


#If the total of the player's
#execute as @e[type=armor_stand,name="minecraft_but.chunkError",tag=minecraft_but.CEvoid] at @s unless score @s minecraft_but.chunk_error.total = @p minecraft_but.chunk_error.total run setblock ~ 35 ~ light_blue_wool
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run minecraft_but.coreion minecraft_but.core:modifiers/chunk_error/error_sound
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run fill ~16 319 ~16 ~ 150 ~ air
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run fill ~16 149 ~16 ~ 50 ~ air
execute as @e[ type=armor_stand, name="minecraft_but.chunkError" ] at @s run fill ~16 49 ~16 ~ 0 ~ air
execute as @e[ type=armor_stand, name="minecraft_but.chunkError", tag=minecraft_but.CEvoid ] at @s unless score @s minecraft_but.chunk_error.total = @p minecraft_but.chunk_error.total run kill @e[ type=armor_stand, name="minecraft_but.chunkError" ]

execute as @e[ type=armor_stand, name="minecraft_but.chunkError", tag=minecraft_but.CEvoid ] at @s if score @s minecraft_but.chunk_error.total = @p minecraftminecraft_but.corechunk_error.total run function minecraft_but.core:modifiers/chunk_error/relocate