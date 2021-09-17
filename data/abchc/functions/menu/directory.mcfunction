function abchc:menu/get_page
function abchc:menu/get_selection

scoreboard players set bool chest_menu 0
### expand for new pages ###
execute if score bool chest_menu matches 0 if score @s chest_menu matches 0 run function abchc:menu/page0/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 1 run function abchc:menu/page1/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 2 run function abchc:menu/page2/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 3 run function abchc:menu/page3/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 4 run function abchc:menu/page4/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 5 run function abchc:menu/page5/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 6 run function abchc:menu/page6/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 7 run function abchc:menu/page7/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 8 run function abchc:menu/page8/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 9 run function abchc:menu/page9/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 10 run function abchc:menu/page10/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 11 run function abchc:menu/page11/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 12 run function abchc:menu/page12/directory
#############################

function abchc:menu/update

clear @s #abchc:chest_menu{abch:{isMenu:1b}}