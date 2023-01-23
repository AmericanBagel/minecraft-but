#> minecraft_but.core:modifiers/unstable_inv/slot/hotbar
# Hotbar tree
# 1 commnand so far
# @within minecraft_but.core:modifiers/unstable_inventory/pick_slot

# 3 commands up the tree
# 2 commands on this branch
# 5 down the branch
##########
# 13 commands in total
execute if score $slot minecraft_but.unstable_inv matches -106..3 run function minecraft_but.core:modifiers/unstable_inv/slot/hotbar/1
execute if score $slot minecraft_but.unstable_inv matches 4..8 run function minecraft_but.core:modifiers/unstable_inv/slot/hotbar/2