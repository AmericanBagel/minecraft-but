#> abchc:apis/rng/zprivate/uuid_reset
# @within abchc:apis/rng/zprivate/init

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg abch.rng.math run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp abch.rng.math run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 abch.rng.math run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 abch.rng.math run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg abch.rng.math += #temp abch.rng.math
scoreboard players operation #lcg abch.rng.math += #temp1 abch.rng.math
scoreboard players operation #lcg abch.rng.math += #temp2 abch.rng.math
kill @e[tag=uuid]