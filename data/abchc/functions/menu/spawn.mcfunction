tag @p add init
summon chest_minecart ^ ^ ^2 {Tags:["abch.menu","invisible_minecart","global.ignore"],CustomName:'{"text":"Menu"}',CustomDisplayTile:1,DisplayState:{Name:"minecraft:air"}}
scoreboard players set @s abch.isSpawned 1
scoreboard players set @s abch.menu.page 0

scoreboard players add .global sid 1
scoreboard players operation @e[type=pig,sort=nearest,limit=1,tag=init] sid = .global sid
scoreboard players operation @p[tag=init] sid = .global sid
tag @e[tag=init] remove init
