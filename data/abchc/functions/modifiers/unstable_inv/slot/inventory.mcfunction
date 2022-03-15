#> abchc:modifiers/unstable_inv/slot/inventory
# @within abchc:modifiers/unstable_inventory/pick_slot

# 3 commands up the tree
# 3 commands on this branch
# 9 commands down this branch
##########
# 15 commands in totalx

execute if score $slot abch.unstable_inv matches 9..17 run function abchc:modifiers/unstable_inv/slot/inventory/1
execute if score $slot abch.unstable_inv matches 18..26 run function abchc:modifiers/unstable_inv/slot/inventory/2
execute if score $slot abch.unstable_inv matches 27..35 run function abchc:modifiers/unstable_inv/slot/inventory/3vvvvvv