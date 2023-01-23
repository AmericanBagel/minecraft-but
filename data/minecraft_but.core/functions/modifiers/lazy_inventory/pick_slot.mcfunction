#> minecraft_but.core:modifiers/lazy_inventory/pick_slot
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
# @within minecraft_but.core:modifiers/lazy_inventory/main
# @output
#   storage minecraft_but.__temp__:lazy_inventory Inventory
#       Player's inventory value in storage
#       for efficiency 
#   score $index minecraft_but.lazy_inventory
#       How many indeces to delete in
#       reading player's inventory

data remove storage minecraft_but.__temp__:lazy_inventory Inventory

#> Load player's inventory into storage
data modify storage minecraft_but.__temp__:lazy_inventory Inventory set from entity @s Inventory

# Select a random index in the beginning by taking your random number modulo the array size, and keep iterating through the storage array for as many steps as the chosen index is high

#> Random number up to amount of Inventory indeces
execute store result score $length minecraft_but.lazy_inventory run data get entity @s Inventory

# Generate random number
scoreboard players set $min random 0
scoreboard players operation $max random = $length minecraft_but.lazy_inventory
function random:uniform

# Set $index to random number
scoreboard players operation $index minecraft_but.lazy_inventory = $out random

#> Randomly remove slots
# Delete indeces per $index
execute if score $index minecraft_but.lazy_inventory matches 1.. run function minecraft_but.core:modifiers/lazy_inventory/iterate

#> Drop item from first slot
# Store slot into scoreboard before deleting it
execute store result score $slot minecraft_but.lazy_inventory run data get storage minecraft_but.__temp__:lazy_inventory Inventory[0].Slot
data remove storage minecraft_but.__temp__:lazy_inventory Inventory[0].Slot

# Summon item
summon item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b, tag:{minecraft_but:{lazy_inventory:{temp:1b}}}}, Tags: [ "minecraft_but", "minecraft_but.lazy_inventory", "minecraft_but.lazy_inventory.item", "minecraft_but.lazy_inventory.init" ], Motion: [ 0.0d, 0.125d, 0.0d ],PickupDelay:27s}

# Push player's inventory slot data into new item entity
data modify entity @e[ type=item, tag=minecraft_but.lazy_inventory.init, limit=1, sort=nearest ] Item set from storage minecraft_but.__temp__:lazy_inventory Inventory[0]

# Add pickup delay
data modify entity @e[ type=item, tag=minecraft_but.lazy_inventory.init, limit=1, sort=nearest ] PickupDelay set value 27s

#> Clear item from inventory
# Use tree for more efficiency

# 13 commands
execute if score $slot minecraft_but.lazy_inventory matches -106..8 run function minecraft_but.core:modifiers/lazy_inventory/slot/hotbar

# 15 commands
execute if score $slot minecraft_but.lazy_inventory matches 9..35 run function minecraft_but.core:modifiers/lazy_inventory/slot/inventory

# 7 commands
execute if score $slot minecraft_but.lazy_inventory matches 100..103 run function minecraft_but.core:modifiers/lazy_inventory/slot/armor

# 12 commands on average instead of 41
# 12/41

#> Plop SFX
execute unless score $length minecraft_but.lazy_inventory matches 0 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.5

#> Reset scoreboard
scoreboard players reset @s minecraft_but.lazy_inventory
scoreboard players reset @s minecraft_but.lazy_inventory.x
scoreboard players reset @s minecraft_but.lazy_inventory.y
scoreboard players reset @s minecraft_but.lazy_inventory.z

#> Kill stone item (in case something was unsuccessful)
kill @e[type=item,nbt={Item:{id:"minecraft:stone",tag:{minecraft_but:{lazy_inventory:{temp:1b}}}}}]