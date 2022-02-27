# Update chest minecart GUI
execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s run function abchc:menu/update

# If the minecart is gone for some reason (killed, out of range, or despawned), spawn it again
execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s unless entity @e[distance=..10,tag=abch.menu] run function abchc:menu/spawn
# If the player stopped holding the nether star, despawn the GUI
execute as @a[scores={abch.isSpawned=1},nbt=!{SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s run function abchc:menu/despawn

# Make minecarts visible
execute as @e[type=#abchc:minecarts,tag=!invisible_minecart] run function abchc:menu/invisible_minecart

# Update minecart chest GUI
execute as @a[tag=!blacklist,tag=!global.ignore] at @s run function abchc:menu/check

# If the player renamed a nether star to "Chaos Menu", give the menu item
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Chaos Menu"}'}}}]}] run function abchc:menu/give_menu

# Increase global timer for modifiers
scoreboard players add .global abch.timer 1 


function abchc:menu/get_page
function abchc:menu/get_selection

scoreboard players set @s abch.menu.bool 0
### expand for new pages ###
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 0 run function abchc:menu/page0/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 1 run function abchc:menu/page1/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 2 run function abchc:menu/page2/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 3 run function abchc:menu/page3/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 4 run function abchc:menu/page4/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 5 run function abchc:menu/page5/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 6 run function abchc:menu/page6/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 7 run function abchc:menu/page7/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 8 run function abchc:menu/page8/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 9 run function abchc:menu/page9/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 10 run function abchc:menu/page10/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 11 run function abchc:menu/page11/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 12 run function abchc:menu/page12/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 13 run function abchc:menu/page13/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 14 run function abchc:menu/page14/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 15 run function abchc:menu/page15/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 16 run function abchc:menu/page16/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 17 run function abchc:menu/page17/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 18 run function abchc:menu/page18/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 19 run function abchc:menu/page19/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 20 run function abchc:menu/page20/directory
execute if score @s abch.menu.bool matches 0 if score @s abch.menu.page matches 21 run function abchc:menu/page21/directory
#############################

function abchc:menu/update

clear @s #abchc:chest_menu{abch:{isMenu:1b}}


# Kill items if chest minecart is killed
kill @e[type=item,nbt={Item:{tag:{abch:{isMenu:1b}}}}]

# Teleport GUI minecart in front of player
execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s positioned ~ ~1 ~ run tp @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] ^ ^ ^1.5