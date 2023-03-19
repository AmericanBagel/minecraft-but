#> abchc:modifiers/lazy_inventory/slot/armor
# @within abchc:modifiers/lazy_inventoryentory/pick_slot
# Armor

# 3 commands up the tree
# 4 commands on this branch
##########
# 7 commands in total
execute if score $slot abch.lazy_inventory matches 100 run item replace entity @s armor.feet with air
execute if score $slot abch.lazy_inventory matches 101 run item replace entity @s armor.legs with air
execute if score $slot abch.lazy_inventory matches 102 run item replace entity @s armor.chest with air
execute if score $slot abch.lazy_inventory matches 103 run item replace entity @s armor.head with air