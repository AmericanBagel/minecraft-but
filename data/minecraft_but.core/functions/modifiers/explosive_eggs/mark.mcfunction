execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName: '{"text":"minecraft_but.eeMarker"}'}
execute store result score @s minecraft_but.explosive_eggs.UUID1 run data get entity @s UUID[0]
execute store result score @s minecraft_but.explosive_eggs.UUID2 run data get entity @s UUID[1]
execute store result score @s minecraft_but.explosive_eggs.UUID3 run data get entity @s UUID[2]
execute store result score @s minecraft_but.explosive_eggs.UUID4 run data get entity @s UUID[3]

scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="minecraft_but.eeMarker" ] minecraft_but.explosive_eggs.UUID1 = @s minecraft_but.explosive_eggs.UUID1
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="minecraft_but.eeMarker" ] minecraft_but.explosive_eggs.UUID2 = @s minecraft_but.explosive_eggs.UUID2
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="minecraft_but.eeMarker" ] minecraft_but.explosive_eggs.UUID3 = @s minecraft_but.explosive_eggs.UUID3
scoreboard players operation @e[ type=area_effect_cloud, limit=1, sort=nearest, name="minecraft_but.eeMarker" ] minecraft_but.explosive_eggs.UUID4 = @s minecraft_but.explosive_eggs.UUID4

tag @s add minecraft_but.eeMarked