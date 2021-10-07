data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:0b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:1,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:1b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:2,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:2b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:3,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:3b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:4,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:4b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:5,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:5b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:6,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:6b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:7,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:7b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:8,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:8b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:9,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:9b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:10,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:10b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Information","color":"yellow","bold":"true","italic":"false"}'},SkullOwner:{Id:[I;-632453027,621104933,-1074880290,127205777],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDAxYWZlOTczYzU0ODJmZGM3MWU2YWExMDY5ODgzM2M3OWM0MzdmMjEzMDhlYTlhMWEwOTU3NDZlYzI3NGEwZiJ9fX0="}]}},HideFlags:32,abch:{isMenu:1b,page:0,selection:11}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:11b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:12,blank:1}}}
execute unless score global abch.toggle matches 0 run data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:12b,id:"minecraft:lime_wool",Count:1b,tag:{display:{Name:'{"text":"Pack ENABLED","color":"green","bold":"true","italic":"false"}'},abch:{isMenu:1b,page:0,selection:13}}}
execute if score global abch.toggle matches 0 run data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:12b,id:"minecraft:red_wool",Count:1b,tag:{display:{Name:'{"text":"Pack DISABLED","color":"red","bold":"true","italic":"false"}'},abch:{isMenu:1b,page:0,selection:13}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:13b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},abch:{isMenu:1b,page:0,selection:14,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:14b,id:"minecraft:conduit",Count:1b,tag:{display:{Name:'{"text":"Configuration","color":"aqua","bold":"true","italic":"false"}'},abch:{isMenu:1b,page:0,selection:15}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:15b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:16,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:16b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Credits","color":"white","bold":"true","italic":"false"}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:17}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:17b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:18,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:18b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:19,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:19b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:20,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:20b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:21,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:21b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:22,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:22b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:23,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:23b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:24,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:24b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:25,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:25b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},HideFlags:32,abch:{isMenu:1b,page:0,selection:26,blank:1}}}
data modify entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items insert 0 value {Slot:26b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"Admin Panel","color":"gray","italic":"true"}'},abch:{isMenu:1b,page:0,selection:27}}}