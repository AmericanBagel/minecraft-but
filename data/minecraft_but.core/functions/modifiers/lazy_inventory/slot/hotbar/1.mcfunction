#> minecraft_but.coreraft_but.core:modifiers/lazy_inventory/slot/hotbar/1
# @within minecraft_but.coreraft_but.core:

execute if score $slot minecraft_but.lazy_inventory matches -106 run item replace entity @s weapon.offhand with air
execute if score $slot minecraft_but.lazy_inventory matches 0 run item replace entity @s hotbar.0 with air
execute if score $slot minecraft_but.lazy_inventory matches 1 run item replace entity @s hotbar.1 with air
execute if score $slot minecraft_but.lazy_inventory matches 2 run item replace entity @s hotbar.2 with air
execute if score $slot minecraft_but.lazy_inventory matches 3 run item replace entity @s hotbar.3 with air