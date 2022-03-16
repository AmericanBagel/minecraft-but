execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName: '{"text":"abch.eeMarker"}'}
execute store result score @s abch.explosive_eggs.UUID1 run data get entity @s UUID[0]
execute store result score @s abch.explosive_eggs.UUID2 run data get entity @s UUID[1]
execute store result score @s abch.explosive_eggs.UUID3 run data get entity @s UUID[2]
execute store result score @s abch.explosive_eggs.UUID4 run data get entity @s UUID[3]

scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.eeMarker" ] abch.explosive_eggs.UUID1 = @s abch.explosive_eggs.UUID1
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.eeMarker" ] abch.explosive_eggs.UUID2 = @s abch.explosive_eggs.UUID2
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.eeMarker" ] abch.explosive_eggs.UUID3 = @s abch.explosive_eggs.UUID3
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.eeMarker" ] abch.explosive_eggs.UUID4 = @s abch.explosive_eggs.UUID4

tag @s add abch.eeMarked