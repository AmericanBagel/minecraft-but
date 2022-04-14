#> abchc:modifiers/lazy_inventory/slot/hotbar
# Hotbar tree
# 1 commnand so far
# @within abchc:modifiers/lazy_inventoryentory/pick_slot

# 3 commands up the tree
# 2 commands on this branch
# 5 down the branch
##########
# 13 commands in total
execute if score $slot abch.lazy_inventory matches -106..3 run function abchc:modifiers/lazy_inventory/slot/hotbar/1
execute if score $slot abch.lazy_inventory matches 4..8 run function abchc:modifiers/lazy_inventory/slot/hotbar/2