execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName: '{"text":"abch.esMarker"}'}
execute store result score @s abch.esUUID1 run data get entity @s UUID[0]
execute store result score @s abch.esUUID2 run data get entity @s UUID[1]
execute store result score @s abch.esUUID3 run data get entity @s UUID[2]
execute store result score @s abch.esUUID4 run data get entity @s UUID[3]

scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.esUUID1 = @s abch.esUUID1
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.esUUID2 = @s abch.esUUID2
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.esUUID3 = @s abch.esUUID3
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.esUUID4 = @s abch.esUUID4

tag @s add abch.esMarked