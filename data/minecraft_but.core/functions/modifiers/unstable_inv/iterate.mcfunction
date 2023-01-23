#> minecraft_but.core:modifiers/unstable_inv/iterate
# Iterate over data to get random index
# @context player
# @within minecraft_but.core:modifiers/unstable_inv/pick_slot
# @input
#   storage minecraft_but.__temp__:unstable_inv Inventory
#       Player's inventory value in storage
#       for efficiency 
#   score $index minecraft_but.unstable_inv
#       How many indeces to delete in
#       reading player's inventory

# Remove first slot in index from storage
data remove storage minecraft_but.__temp__:unstable_inv Inventory[0]

# Decrease loop count
scoreboard players remove $index minecraft_but.unstable_inv 1

# Continue loop if loop hasn't ended
execute if score $index minecraft_but.unstable_inv matches 1.. run function minecraft_but.core:modifiers/unstable_inv/iterate