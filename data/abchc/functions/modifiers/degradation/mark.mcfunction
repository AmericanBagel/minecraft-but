scoreboard players operation $loop abch.degradation = degradation.speed abch.config

execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s run summon marker ~ ~ ~ {CustomName: '{"text":"abch.degrade"}', Tags: [ "abch", "abch.marker", "marker", "global.ignore", "abch.degrade" ]}

execute if score $loop abch.degradation matches 1.. run function abchc:modifiers/degradation/degrade
execute if score $loop abch.degradation matches ..0 run kill @e[ name="abch.degrade", type=marker ]