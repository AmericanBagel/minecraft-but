#> minecraft_but.core:modifiers/lazy_inventory/iterate
# Iterate over data to get random index
# @context player
# @within minecraft_but.core:modifiers/lazy_inventory/pick_slot
# @input
#   storage minecraft_but.__temp__:lazy_inventory Inventory
#       Player's inventory value in storage
#       for efficiency 
#   score $index minecraft_but.lazy_inventory
#       How many indeces to delete in
#       reading player's inventory

# Remove first slot in index from storage
data remove storage minecraft_but.__temp__:lazy_inventory Inventory[0]

# Decrease loop count
scoreboard players remove $index minecraft_but.lazy_inventory 1

# Continue loop if loop hasn't ended
execute if score $index minecraft_but.lazy_inventory matches 1.. run function minecraft_but.core:modifiers/lazy_inventory/iterate