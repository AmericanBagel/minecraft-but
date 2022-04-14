#> abchc:modifiers/lazy_inventory/iterate
# Iterate over data to get random index
# @context player
# @within abchc:modifiers/lazy_inventory/pick_slot
# @input
#   storage abch.__temp__:lazy_inventory Inventory
#       Player's inventory value in storage
#       for efficiency 
#   score $index abch.lazy_inventory
#       How many indeces to delete in
#       reading player's inventory

# Remove first slot in index from storage
data remove storage abch.__temp__:lazy_inventory Inventory[0]

# Decrease loop count
scoreboard players remove $index abch.lazy_inventory 1

# Continue loop if loop hasn't ended
execute if score $index abch.lazy_inventory matches 1.. run function abchc:modifiers/lazy_inventory/iterate