scoreboard players add @s abch.chunk_error.limit 1
execute if score @s abch.chunk_error.limit matches 5.. run kill @s

spreadplayers ~ ~ 40 80 false @e[ type=armor_stand, name="abch.chunkError" ]

#Gets armor stand's position divided by 16, leaving out decimals, and puts that position multiplied by 16 back into the armor stand, therefore aligning it with 0,0 in the chunk.
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

#Uses recursion to check for void.
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s positioned ~ 256 ~ run function abchc:modifiers/chunk_error/recursion

execute as @e[ type=armor_stand, name="abch.chunkError" ] store result score @s abch.chunk_error.x run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result score @s abch.chunk_error.z run data get entity @s Pos[2] 0.0625

execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.chunk_error.x run data get entity @s Pos[0] 0.0625
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.chunk_error.z run data get entity @s Pos[2] 0.0625

execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players reset @s abch.chunk_error.total
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @s abch.chunk_error.total = @s abch.chunk_error.x
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @s abch.chunk_error.total *= @s abch.chunk_error.z

execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players reset @p abch.chunk_error.total
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @p abch.chunk_error.total = @p abch.chunk_error.x
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @p abch.chunk_error.total *= @p abch.chunk_error.z


#If the total of the player's
#execute as @e[type=armor_stand,name="abch.chunkError",tag=abch.CEvoid] at @s unless score @s abch.chunk_error.total = @p abch.chunk_error.total run setblock ~ 35 ~ light_blue_wool
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run function abchc:modifiers/chunk_error/error_sound
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 319 ~16 ~ 150 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 149 ~16 ~ 50 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 49 ~16 ~ 0 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError", tag=abch.CEvoid ] at @s unless score @s abch.chunk_error.total = @p abch.chunk_error.total run kill @e[ type=armor_stand, name="abch.chunkError" ]

execute as @e[ type=armor_stand, name="abch.chunkError", tag=abch.CEvoid ] at @s if score @s abch.chunk_error.total = @p abch.chunk_error.total run function abchc:modifiers/chunk_error/relocate