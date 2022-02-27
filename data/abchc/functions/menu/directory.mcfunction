#> abchc:menu/directory
#
# Directory function for the menu, the root of the GUI.
# Spawns, updates, despawns, and otherwise manages the GUI.
#
# @context root
#
# @within abchc:main

## Update chest minecart GUI
#execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s run function abchc:menu/update
#
## If the minecart is gone for some reason (killed, out of range, or despawned), spawn it again
#execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s unless entity @e[distance=..10,tag=abch.menu] run function abchc:menu/spawn
## If the player stopped holding the nether star, despawn the GUI
#execute as @a[scores={abch.isSpawned=1},nbt=!{SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s run function abchc:menu/despawn
#
## Make minecarts visible
#execute as @e[type=#abchc:minecarts,tag=!invisible_minecart] run function abchc:menu/invisible_minecart
#
## Update minecart chest GUI
#execute as @a[tag=!blacklist,tag=!global.ignore] at @s run function abchc:menu/check
#
## If the player renamed a nether star to "Chaos Menu", give the menu item
#execute as @a[nbt={Inventory:[{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Chaos Menu"}'}}}]}] run function abchc:menu/give_menu
#
## Kill items if chest minecart is killed
#kill @e[type=item,nbt={Item:{tag:{abch:{isMenu:1b}}}}]
#
## Teleport GUI minecart in front of player
#execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s positioned ~ ~1 ~ run tp @e[type=chest_minecart,tag=abch.menu,limit=1,sort=nearest] ^ ^ ^1.5

###############################################################

# Does a minecart linked to player exist?
#execute as @a at @s store result score @s abch.menu.sid.bool if entity @e[type=chest_minecart,tag=abch.menu,predicate=abchc:menu/sid]

#execute as @a at @s as @e[type=chest_minecart,tag=abch.menu,predicate=abchc:menu/sid] if score @s sid = @p sid run scoreboard players set @p abch.menu.bool

#execute store result score @s abch.menu.sid.bool as @a at @s as @e[type=chest_minecart,tag=abch.menu,predicate=abchc:menu/sid]

# scoreboard players operation .search sid = @s sid
# tag @s add this
# execute as @e[type=pig] if score @s sid = .search sid run function ...
# tag @s remove this 

# If player holds chaos menu, spawn GUI
#execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s 


execute as @a at @s run function abchc:menu/link

# If player has chaos menu and there is no linked GUI, spawn GUI.
execute as @a[nbt={SelectedItem:{tag:{abch:{menuStar:1b}}}}] at @s unless score @s abch.menu.bool matches 1 run function abchc:menu/spawn