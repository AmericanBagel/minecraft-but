#> minecraft_but.coreraft_but.core:modifiers/limited_inventory/click
# Function to run on clicking glass in inventory
# @within minecraft_but.coreraft_but.core/limited_inventory/actions
# @context player

#> Play error sound
#playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

#> Clear
clear @s minecraft:black_stained_glass_pane{minecraft_but:{modifiers:{limited_inventory:1b}}}

#> Update inventory
function minecraft_but.coreraft_but.core:modifiers/limited_inventory/update_inv