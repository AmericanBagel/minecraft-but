summon marker ~ ~ ~ {Tags:["abch_lagMarker","abch_newLag"]}
execute store result entity @e[type=marker,tag=abch_newLag,limit=1,sort=nearest] Rotation float 1 run data get entity @s Rotation 1
tp @e[type=marker,tag=abch_newLag] ~ ~ ~ ~ ~

scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch_newLag] abch_lagUUID1 = @s abch_lagUUID1
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch_newLag] abch_lagUUID2 = @s abch_lagUUID2
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch_newLag] abch_lagUUID3 = @s abch_lagUUID3
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch_newLag] abch_lagUUID4 = @s abch_lagUUID4

say Marked!