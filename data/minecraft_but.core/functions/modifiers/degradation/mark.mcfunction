scoreboard players operation $loop minecraft_but.degradation = degradation.speed minecraft_but.config

execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] at @s run summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.degrade"}', Tags: [ "minecraft_but", "minecraft_but.marker", "marker", "global.ignore", "minecraft_but.degrade" ]}

execute if score $loop minecraft_but.degradation matches 1.. run function minecraft_but.core:modifiers/degradation/degrade
execute if score $loop minecraft_but.degradation matches ..0 run kill @e[ name="minecraft_but.degrade", type=marker ]