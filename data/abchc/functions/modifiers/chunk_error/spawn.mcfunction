summon armor_stand ~ ~ ~ {CustomName: '{"text":"abch.chunkError"}', Invisible: 1b, NoGravity: 1b, Invulnerable: 1b}
spreadplayers ~ ~ 40 80 false @e[ type=armor_stand, name="abch.chunkError" ]

#Gets armor stand's position divided by 16, leaving out decimals, and puts that position multiplied by 16 back into the armor stand, therefore aligning it with 0,0 in the chunk.
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

#Uses recursion to check for void.
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s positioned ~ 256 ~ run function abchc:modifiers/chunk_error/recursion

execute as @e[ type=armor_stand, name="abch.chunkError" ] store result score @s abch.CEChunkX run data get entity @s Pos[0] 0.0625
execute as @e[ type=armor_stand, name="abch.chunkError" ] store result score @s abch.CEChunkZ run data get entity @s Pos[2] 0.0625

execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.CEChunkX run data get entity @s Pos[0] 0.0625
execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.CEChunkZ run data get entity @s Pos[2] 0.0625

execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players reset @s abch.CEChunkT
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @s abch.CEChunkT = @s abch.CEChunkX
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @s abch.CEChunkT *= @s abch.CEChunkZ

execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players reset @p abch.CEChunkT
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @p abch.CEChunkT = @p abch.CEChunkX
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run scoreboard players operation @p abch.CEChunkT *= @p abch.CEChunkZ


#If the total of the player's
#execute as @e[type=armor_stand,name="abch.chunkError",tag=abch.CEvoid] at @s unless score @s abch.CEChunkT = @p abch.CEChunkT run setblock ~ 35 ~ light_blue_wool
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run function abchc:modifiers/chunk_error/error_sound
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 255 ~16 ~ 150 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 149 ~16 ~ 50 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError" ] at @s run fill ~16 49 ~16 ~ 0 ~ air
execute as @e[ type=armor_stand, name="abch.chunkError", tag=abch.CEvoid ] at @s unless score @s abch.CEChunkT = @p abch.CEChunkT run kill @e[ type=armor_stand, name="abch.chunkError" ]

execute as @e[ type=armor_stand, name="abch.chunkError", tag=abch.CEvoid ] at @s if score @s abch.CEChunkT = @p abch.CEChunkT run function abchc:modifiers/chunk_error/relocate