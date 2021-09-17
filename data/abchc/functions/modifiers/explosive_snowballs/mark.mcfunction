execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'{"text":"abch_esMarker"}'}
execute store result score @s abch_esUUID1 run data get entity @s UUID[0]
execute store result score @s abch_esUUID2 run data get entity @s UUID[1]
execute store result score @s abch_esUUID3 run data get entity @s UUID[2]
execute store result score @s abch_esUUID4 run data get entity @s UUID[3]

scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_esMarker"] abch_esUUID1 = @s abch_esUUID1
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_esMarker"] abch_esUUID2 = @s abch_esUUID2
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_esMarker"] abch_esUUID3 = @s abch_esUUID3
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_esMarker"] abch_esUUID4 = @s abch_esUUID4

tag @s add abch_esMarked