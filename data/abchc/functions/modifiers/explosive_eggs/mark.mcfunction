execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'{"text":"abch.eeMarker"}'}
execute store result score @s abch.eeUUID1 run data get entity @s UUID[0]
execute store result score @s abch.eeUUID2 run data get entity @s UUID[1]
execute store result score @s abch.eeUUID3 run data get entity @s UUID[2]
execute store result score @s abch.eeUUID4 run data get entity @s UUID[3]

scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.eeMarker"] abch.eeUUID1 = @s abch.eeUUID1
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.eeMarker"] abch.eeUUID2 = @s abch.eeUUID2
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.eeMarker"] abch.eeUUID3 = @s abch.eeUUID3
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.eeMarker"] abch.eeUUID4 = @s abch.eeUUID4

tag @s add abch.eeMarked