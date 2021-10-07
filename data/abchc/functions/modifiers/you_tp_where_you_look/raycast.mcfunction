#particle end_rod ~ ~ ~ 0 0 0 0 1 normal
#scoreboard players add @s abch.esLimit 1
#execute if block ^ ^ ^1 minecraft:air positioned ^ ^ ^1 unless score @s abch.esLimit matches 19.. run function abchc:modifiers/explosive_sight/raytrace
#execute unless block ^ ^ ^1 minecraft:air run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 10 normal
#execute if score @s abch.esLimit matches 20.. run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 10 normal
#say raytrace

#execute if block ^ ^ ^1 minecraft:air if score @s abch.esLimit matches 0..19 positioned ^ ^ ^1 run function abchc:modifiers/explosive_sight/raytrace
#execute unless block ^ ^ ^1 minecraft:air run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 normal
#execute if score @s abch.esLimit matches 20.. run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 normal
#scoreboard players add @s abch.esLimit 1

#execute if score @s abch.esLimit matches ..6 run setblock ~ ~ ~ diamond_block
scoreboard players remove @s abch.ytpLimit 1
execute unless block ^ ^ ^1 minecraft:air run function abchc:modifiers/you_tp_where_you_look/trigger
#execute if score @s abch.ytpLimit matches 0 run function abchc:modifiers/you_tp_where_you_look/trigger
execute unless score @s abch.ytpLimit matches ..0 positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function abchc:modifiers/you_tp_where_you_look/raycast