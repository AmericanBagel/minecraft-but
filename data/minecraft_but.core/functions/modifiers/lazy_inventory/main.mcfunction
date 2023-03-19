#> minecraft_but.coreraft_but.core:modifiers/lazy_inventory/main
# Main function for unstable inventory modifier
# Items fall out of player's inventory when damaged
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/directory

#> Check for movement
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.lazy_inventory.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator] aminecraft_but.corerun function minecraft_but.core:modifiers/lazy_inventory/get_movement

execute as @a[scores={minecraft_but.lazy_inventory=1..}] at @s if pminecraft_but.coreate minecraft_but.cominecraft_but.corepct run function minecraft_but.core:modifiers/lazy_inventory/pick_slot