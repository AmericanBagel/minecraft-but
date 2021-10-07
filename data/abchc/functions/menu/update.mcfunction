data remove entity @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] Items
### REMEMBER TO UNCOMMENT!!!
#execute positioned ~ ~1 ~ run tp @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] ^ ^ ^2

### expand for new pages
execute if score @s chest_menu matches 0 run function abchc:menu/page0/items
execute if score @s chest_menu matches 1 run function abchc:menu/page1/items
execute if score @s chest_menu matches 2 run function abchc:menu/page2/items
execute if score @s chest_menu matches 3 run function abchc:menu/page3/items
execute if score @s chest_menu matches 4 run function abchc:menu/page4/items
execute if score @s chest_menu matches 5 run function abchc:menu/page5/items
execute if score @s chest_menu matches 6 run function abchc:menu/page6/items
execute if score @s chest_menu matches 7 run function abchc:menu/page7/items
execute if score @s chest_menu matches 8 run function abchc:menu/page8/items
execute if score @s chest_menu matches 9 run function abchc:menu/page9/items
execute if score @s chest_menu matches 10 run function abchc:menu/page10/items
execute if score @s chest_menu matches 11 run function abchc:menu/page11/items
execute if score @s chest_menu matches 12 run function abchc:menu/page12/items
#############################

