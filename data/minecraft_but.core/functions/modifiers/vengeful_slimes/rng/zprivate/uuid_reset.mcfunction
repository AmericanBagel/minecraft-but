summon minecraft:area_effect_cloud ~ ~ ~ {Tags: [ "minecraft_but.uuid" ]}
execute store result score minecraft_but.vsLCG math run data get entity @e[ tag=minecraft_but.uuid, limit=1 ] UUID[0]
execute store result score minecraft_but.vsTemp math run data get entity @e[ tag=minecraft_but.uuid, limit=1 ] UUID[1]
execute store result score minecraft_but.vsTemp1 math run data get entity @e[ tag=minecraft_but.uuid, limit=1 ] UUID[2]
execute store result score minecraft_but.vsTemp2 math run data get entity @e[ tag=minecraft_but.uuid, limit=1 ] UUID[3]
scoreboard players operation minecraft_but.vsLCG math += minecraft_but.vsTemp math
scoreboard players operation minecraft_but.vsLCG math += minecraft_but.vsTemp1 math
scoreboard players operation minecraft_but.vsLCG math += minecraft_but.vsTemp2 math
kill @e[ tag=minecraft_but.uuid ]