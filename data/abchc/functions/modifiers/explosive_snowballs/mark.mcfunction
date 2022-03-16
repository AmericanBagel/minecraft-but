execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName: '{"text":"abch.esMarker"}'}
execute store result score @s abch.explosive_snowballs.UUID1 run data get entity @s UUID[0]
execute store result score @s abch.explosive_snowballs.UUID2 run data get entity @s UUID[1]
execute store result score @s abch.explosive_snowballs.UUID3 run data get entity @s UUID[2]
execute store result score @s abch.explosive_snowballs.UUID4 run data get entity @s UUID[3]

scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.explosive_snowballs.UUID1 = @s abch.explosive_snowballs.UUID1
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.explosive_snowballs.UUID2 = @s abch.explosive_snowballs.UUID2
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.explosive_snowballs.UUID3 = @s abch.explosive_snowballs.UUID3
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="abch.esMarker" ] abch.explosive_snowballs.UUID4 = @s abch.explosive_snowballs.UUID4

tag @s add abch.esMarked