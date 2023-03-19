#> abchc:modifiers/unstable_inv/pick_slot
# Randomly select inventory slot to drop item from
#
# First, selects slot randomly, then spawns an item entity
# with the NBT of a player's randomly selected slot, then
# gets the Slot nbt tag of the selected slot, and uses
# an efficient if tree to clear the item from the
# player's inventory.
#
#
# @context player
# @within abchc:modifiers/unstable_inv/main
# @output
#   storage abch.__temp__:unstable_inv Inventory
#       Player's inventory value in storage
#       for efficiency 
#   score $index abch.unstable_inv
#       How many indeces to delete in
#       reading player's inventory

#> Load player's inventory into storage
data modify storage abch.__temp__:unstable_inv Inventory set from entity @s Inventory

# Select a random index in the beginning by taking your random number modulo the array size, and keep iterating through the storage array for as many steps as the chosen index is high

#> Random number up to amount of Inventory indeces
# Set $length to amount of items in player's Inventory
execute store result score $length abch.unstable_inv run data get entity @p Inventory

scoreboard players set $min random 0
scoreboard players operation $max random = $length abch.unstable_inv

# Generate random number
function random:uniform

# Set $index to random number
scoreboard players operation $index abch.unstable_inv = $out random

#> Randomly remove slots
# Delete indeces per $index
execute if score $index abch.unstable_inv matches 1.. run function abchc:modifiers/unstable_inv/iterate

#> Drop item from first slot
# Store slot into scoreboard before deleting it
execute store result score $slot abch.unstable_inv run data get storage abch.__temp__:unstable_inv Inventory[0].Slot
data remove storage abch.__temp__:unstable_inv Inventory[0].Slot

# Summon item
summon item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, Tags: [ "abch", "abch.unstable_inv", "abch.unstable_inv.item", "abch.unstable_inv.init" ], Motion: [ 0.0d, 0.125d, 0.0d ]}

# Push player's inventory slot data into new item entity
data modify entity @e[ type=item, tag=abch.unstable_inv.init, limit=1, sort=nearest ] Item set from storage abch.__temp__:unstable_inv Inventory[0]

# Add pickup delay
data modify entity @e[ type=item, tag=abch.unstable_inv.init, limit=1, sort=nearest ] PickupDelay set value 27s

#> Clear item from inventory
# Use tree for more efficiency

# 13 commands
execute if score $slot abch.unstable_inv matches -106..8 run function abchc:modifiers/unstable_inv/slot/hotbar

# 15 commands
execute if score $slot abch.unstable_inv matches 9..35 run function abchc:modifiers/unstable_inv/slot/inventory

# 7 commands
execute if score $slot abch.unstable_inv matches 100..103 run function abchc:modifiers/unstable_inv/slot/armor

# 12 commands on average instead of 41
# 12/41

#> Plop SFX
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.5

#> Reset scoreboard
scoreboard players reset @s abch.unstable_inv.damage