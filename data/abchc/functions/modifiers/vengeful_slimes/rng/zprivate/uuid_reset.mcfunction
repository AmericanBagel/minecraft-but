summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["abch_uuid"]}
execute store result score abch_vsLCG math run data get entity @e[tag=abch_uuid,limit=1] UUID[0]
execute store result score abch_vsTemp math run data get entity @e[tag=abch_uuid,limit=1] UUID[1]
execute store result score abch_vsTemp1 math run data get entity @e[tag=abch_uuid,limit=1] UUID[2]
execute store result score abch_vsTemp2 math run data get entity @e[tag=abch_uuid,limit=1] UUID[3]
scoreboard players operation abch_vsLCG math += abch_vsTemp math
scoreboard players operation abch_vsLCG math += abch_vsTemp1 math
scoreboard players operation abch_vsLCG math += abch_vsTemp2 math
kill @e[tag=abch_uuid]