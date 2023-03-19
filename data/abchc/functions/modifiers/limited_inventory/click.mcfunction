#> abchc:modifiers/limited_inventory/click
# Function to run on clicking glass in inventory
# @within abchc/limited_inventory/actions
# @context player

#> Play error sound
#playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

#> Clear
clear @s minecraft:black_stained_glass_pane{abch:{modifiers:{limited_inventory:1b}}}

#> Update inventory
function abchc:modifiers/limited_inventory/update_inv