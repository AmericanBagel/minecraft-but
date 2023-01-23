#particle end_rod ~ ~ ~ 0 0 0 0 1 normal
#scoreboard players add @s minecraft_but.esLimit 1
#execute if block ^ ^ ^1 minecraft:air positioned ^ ^ ^1 unless score @s minecraft_but.esLimit matches 19.. run function minecraft_but.core:modifiers/explosive_sight/raycast/raytrace
#execute unless block ^ ^ ^1 minecraft:air run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 10 normal
#execute if score @s minecraft_but.esLimit matches 20.. run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 10 normal
#say raytrace

#execute if block ^ ^ ^1 minecraft:air if score @s minecraft_but.esLimit matches 0..19 positioned ^ ^ ^1 run function minecraft_but.core:modifiers/explosive_sight/raycast/raytrace
#execute unless block ^ ^ ^1 minecraft:air run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 normal
#execute if score @s minecraft_but.esLimit matches 20.. run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 normal
#scoreboard players add @s minecraft_but.esLimit 1

#execute if score @s minecraft_but.esLimit matches ..6 run setblock ~ ~ ~ diamond_block
scoreboard players remove @s minecraft_but.ytpwyl.limit 1
execute unless block ^ ^ ^1 minecraft:air run function minecraft_but.core:modifiers/you_tp_where_you_look/trigger
#execute if score @s minecraft_but.ytpwyl.limit matches 0 run function minecraft_but.core:modifiers/you_tp_where_you_look/trigger
execute unless score @s minecraft_but.ytpwyl.limit matches ..0 positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function minecraft_but.core:modifiers/you_tp_where_you_look/raycast