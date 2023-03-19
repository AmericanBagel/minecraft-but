#    4 × current_level + 7 (for levels 0–15)
#    10 × current_level – 38 (for levels 16–30)
#    18 × current_level – 158 (for levels 31+)
#


scoreboard players operation @s minecraft_but.walk_leveling.lvl = @s minecraft_but.walk_leveling.lvl2

execute if score @s minecraft_but.walk_leveling.xp matches 250..374 run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
execute if score @s minecraft_but.walk_leveling.xp matches 375..617 run scoreboard players set @s minecraft_but.walk_leveling.lvl 2
execute if score @s minecraft_but.walk_leveling.xp matches 618..1111 run scoreboard players set @s minecraft_but.walk_leveling.lvl 3
execute if score @s minecraft_but.walk_leveling.xp matches 1112..2167 run scoreboard players set @s minecraft_but.walk_leveling.lvl 4
execute if score @s minecraft_but.walk_leveling.xp matches 2168..4551 run scoreboard players set @s minecraft_but.walk_leveling.lvl 5
execute if score @s minecraft_but.walk_leveling.xp matches 4552..10241 run scoreboard players set @s minecraft_but.walk_leveling.lvl 6
execute if score @s minecraft_but.walk_leveling.xp matches 10242..24579 run scoreboard players set @s minecraft_but.walk_leveling.lvl 7
execute if score @s minecraft_but.walk_leveling.xp matches 24580..62678 run scoreboard players set @s minecraft_but.walk_leveling.lvl 8
execute if score @s minecraft_but.walk_leveling.xp matches 62679..169232 run scoreboard players set @s minecraft_but.walk_leveling.lvl 9
execute if score @s minecraft_but.walk_leveling.xp matches 169233..456929 run scoreboard players set @s minecraft_but.walk_leveling.lvl 10
#execute if score @s minecraft_but.walk_leveling.xp matches 456929.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1
#execute if score @s minecraft_but.walk_leveling.xp matches 500.. run scoreboard players set @s minecraft_but.walk_leveling.lvl 1