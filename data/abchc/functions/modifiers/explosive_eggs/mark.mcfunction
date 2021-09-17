execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'{"text":"abch_eeMarker"}'}
execute store result score @s abch_eeUUID1 run data get entity @s UUID[0]
execute store result score @s abch_eeUUID2 run data get entity @s UUID[1]
execute store result score @s abch_eeUUID3 run data get entity @s UUID[2]
execute store result score @s abch_eeUUID4 run data get entity @s UUID[3]

scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_eeMarker"] abch_eeUUID1 = @s abch_eeUUID1
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_eeMarker"] abch_eeUUID2 = @s abch_eeUUID2
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_eeMarker"] abch_eeUUID3 = @s abch_eeUUID3
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch_eeMarker"] abch_eeUUID4 = @s abch_eeUUID4

tag @s add abch_eeMarked