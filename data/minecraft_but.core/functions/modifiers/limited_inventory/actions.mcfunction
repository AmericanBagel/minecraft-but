#> minecraft_but.core:modifiers/limited_inventory/actions
#
#
#
# @within minecraft_but.core:modifiers/limited_inventory/main
# @context player

#> Compare previous XP to current XP
execute if score limited_inventory.xp_unlock minecraft_but.config matches 1.. store result score @s minecraft_but.limited_inventory.slots run function minecraft_but.core:modifiers/limited_inventory/compare_xp_conf
execute unless score limited_inventory_xp_unlock minecraft_but.config matches -2147483648..2147483647 if score limited_inventory.xp_unlock minecraft_but.default matches 1.. run function minecraft_but.core:modifiers/limited_inventory/compare_xp_def

#> Set player's slots to level/2 if enabled
# Config
execute if score limited_inventory.xp_unlock minecraft_but.config matches 1.. store result score @s minecraft_but.limited_inventory.slots run xp query @s levels
execute if score limited_inventory.xp_unlock minecraft_but.config matches 1.. run scoreboard players operation @s minecraft_but.limited_inventory.slots /= #2 minecraft_but.math

# Default
execute unless score limited_inventory_xp_unlock minecraft_but.config matches -2147483648..2147483647 if score limited_inventory.xp_unlock minecraft_but.default matches 1.. store result score @s minecraft_but.limited_inventory.slots run xp query @s levels
execute unless score limited_inventory_xp_unlock minecraft_but.config matches -2147483648..2147483647 if score limited_inventory.xp_unlock minecraft_but.default matches 1.. run scoreboard players operation @s minecraft_but.limited_inventory.slots /= #2 minecraft_but.math

# Get overage score for detecting if player has more
# glass than they should have to clear duplicated glass
# by getting slots and subtracting it by 1
scoreboard players operation $over minecraft_but.limited_inventory = #28 minecraft_but.math
scoreboard players operation $over minecraft_but.limited_inventory -= @s minecraft_but.limited_inventory.slots

#> Clear player inventory of glass in newly unlocked slots
function minecraft_but.core:modifiers/limited_inventory/clear_inv

#> Detect if player clicked on glass
execute store result score $clear minecraft_but.limited_inventory run clear @s minecraft:black_stained_glass_pane{minecraft_but:{modifiers:{limited_inventory:1b}}} 0

#> If player clicked glass
execute if score $clear minecraft_but.limited_inventory >= $over minecraft_but.limited_inventory run function minecraft_but.core:modifiers/limited_inventory/click

#> If player drops glass, kill it and update inventory
execute if entity @e[type=item,nbt={Item:{tag:{minecraft_but:{modifiers:{limited_inventory:1b}}}}},distance=..2] run function minecraft_but.core:modifiers/limited_inventory/kill_item

#> Update player's inventory
function minecraft_but.core:modifiers/limited_inventory/update_inv

#> Search for inventory blocks with glass in them
execute if score $bool minecraft_but.limited_inventory matches 1.. run function minecraft_but.core:modifiers/limited_inventory/search/start_search