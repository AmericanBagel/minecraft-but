#> minecraft_but.core:modifiers/lazy_inventory/slot/inventory
# @within minecraft_but.core:modifiers/lazy_inventoryentory/pick_slot

# 3 commands up the tree
# 3 commands on this branch
# 9 commands down this branch
##########
# 15 commands in totalx

execute if score $slot minecraft_but.lazy_inventory matches 9..17 run function minecraft_but.core:modifiers/lazy_inventory/slot/inventory/1
execute if score $slot minecraft_but.lazy_inventory matches 18..26 run function minecraft_but.core:modifiers/lazy_inventory/slot/inventory/2
execute if score $slot minecraft_but.lazy_inventory matches 27..35 run function minecraft_but.core:modifiers/lazy_inventory/slot/inventory/3