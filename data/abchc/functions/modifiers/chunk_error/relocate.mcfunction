scoreboard players add @s abch_CEreLimit 1
execute if score @s abch_CEreLimit matches 5.. run kill @s

spreadplayers ~ ~ 40 80 false @e[type=armor_stand,name="abch_chunkError"]

#Gets armor stand's position divided by 16, leaving out decimals, and puts that position multiplied by 16 back into the armor stand, therefore aligning it with 0,0 in the chunk.
execute as @e[type=armor_stand,name="abch_chunkError"] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[type=armor_stand,name="abch_chunkError"] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

#Uses recursion to check for void.
execute as @e[type=armor_stand,name="abch_chunkError"] at @s positioned ~ 256 ~ run function abchc:modifiers/chunk_error/recursion

execute as @e[type=armor_stand,name="abch_chunkError"] store result score @s abch_CEChunkX run data get entity @s Pos[0] 0.0625
execute as @e[type=armor_stand,name="abch_chunkError"] store result score @s abch_CEChunkZ run data get entity @s Pos[2] 0.0625

execute as @a store result score @s abch_CEChunkX run data get entity @s Pos[0] 0.0625
execute as @a store result score @s abch_CEChunkZ run data get entity @s Pos[2] 0.0625

execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players reset @s abch_CEChunkT
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players operation @s abch_CEChunkT = @s abch_CEChunkX 
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players operation @s abch_CEChunkT *= @s abch_CEChunkZ

execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players reset @p abch_CEChunkT
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players operation @p abch_CEChunkT = @p abch_CEChunkX 
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run scoreboard players operation @p abch_CEChunkT *= @p abch_CEChunkZ


#If the total of the player's
#execute as @e[type=armor_stand,name="abch_chunkError",tag=abch_CEvoid] at @s unless score @s abch_CEChunkT = @p abch_CEChunkT run setblock ~ 35 ~ light_blue_wool
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run function abchc:modifiers/chunk_error/error_sound
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run fill ~16 255 ~16 ~ 150 ~ air
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run fill ~16 149 ~16 ~ 50 ~ air
execute as @e[type=armor_stand,name="abch_chunkError"] at @s run fill ~16 49 ~16 ~ 0 ~ air
execute as @e[type=armor_stand,name="abch_chunkError",tag=abch_CEvoid] at @s unless score @s abch_CEChunkT = @p abch_CEChunkT run kill @e[type=armor_stand,name="abch_chunkError"]

execute as @e[type=armor_stand,name="abch_chunkError",tag=abch_CEvoid] at @s if score @s abch_CEChunkT = @p abch_CEChunkT run function abchc:modifiers/chunk_error/relocate