scoreboard players operation degradation.loop abch.config = degradation.speed abch.config

execute as @a[tag=!blacklist,tag=!global.ignore] at @s run summon marker ~ ~ ~ {CustomName:'{"text":"abch.degrade"}',Tags:["abch","abch.marker","marker","global.ignore"]}

execute if score degradation.loop abch.config matches 1.. run function abchc:modifiers/degradation/degrade
execute if score degradation.loop abch.config matches ..0 run kill @e[name="abch.degrade",type=marker]