summon minecraft:area_effect_cloud ~ ~ ~ {Tags: [ "abch.uuid" ]}
execute store result score abch.vsLCG math run data get entity @e[ tag=abch.uuid, limit=1 ] UUID[0]
execute store result score abch.vsTemp math run data get entity @e[ tag=abch.uuid, limit=1 ] UUID[1]
execute store result score abch.vsTemp1 math run data get entity @e[ tag=abch.uuid, limit=1 ] UUID[2]
execute store result score abch.vsTemp2 math run data get entity @e[ tag=abch.uuid, limit=1 ] UUID[3]
scoreboard players operation abch.vsLCG math += abch.vsTemp math
scoreboard players operation abch.vsLCG math += abch.vsTemp1 math
scoreboard players operation abch.vsLCG math += abch.vsTemp2 math
kill @e[ tag=abch.uuid ]