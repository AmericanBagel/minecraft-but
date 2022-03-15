#> abchc:modifiers/unstable_inv/slot/armor
# @within abchc:modifiers/unstable_inventory/pick_slot
# Armor

# 3 commands up the tree
# 4 commands on this branch
##########
# 7 commands in total
execute if score $slot abch.unstable_inv matches 100 run item replace entity @s armor.feet with air
execute if score $slot abch.unstable_inv matches 101 run item replace entity @s armor.legs with air
execute if score $slot abch.unstable_inv matches 102 run item replace entity @s armor.chest with air
execute if score $slot abch.unstable_inv matches 103 run item replace entity @s armor.head with air