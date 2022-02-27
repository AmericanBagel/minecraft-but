### AS: server
### AT: server

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

# execute as @a at @s as @e[tag=abch.menu] if score @s abch.menu.sid = @p abch.menu.sid anchor run tp @s 

# Update chest minecart GUI
function abchc:menu/update

# Update minecart chest GUI
function abchc:menu/check

# Teleport GUI minecart in front of player
execute anchored eyes positioned ~ ~1 ~ run tp @s ^ ^ ^1.5

# If the player stopped holding the nether star, despawn the GUI
execute if entity @p[ nbt=!{SelectedItem: {tag: {abch: {menuStar: 1b}}}} ] run function abchc:menu/despawn