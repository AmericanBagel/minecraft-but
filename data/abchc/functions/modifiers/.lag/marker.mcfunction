summon marker ~ ~ ~ {Tags:["abch.lagMarker","abch.newLag"]}
execute store result entity @e[type=marker,tag=abch.newLag,limit=1,sort=nearest] Rotation float 1 run data get entity @s Rotation 1
tp @e[type=marker,tag=abch.newLag] ~ ~ ~ ~ ~

scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch.newLag] abch.lagUUID1 = @s abch.lagUUID1
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch.newLag] abch.lagUUID2 = @s abch.lagUUID2
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch.newLag] abch.lagUUID3 = @s abch.lagUUID3
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=abch.newLag] abch.lagUUID4 = @s abch.lagUUID4

say Marked!