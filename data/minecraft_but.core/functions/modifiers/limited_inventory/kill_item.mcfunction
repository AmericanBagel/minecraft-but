#> minecraft_but.core:modifiers/limited_inventory/kill_item
# Function run on dropping glass
# Kills item and resets inventory
# @within minecraft_but.core:modifiers/limited_inventory/actions
# @context player

kill @e[type=item,nbt={Item:{tag:{minecraft_but:{modifiers:{limited_inventory:1b}}}}}]
function minecraft_but.core:modifiers/limited_inventory/update_inv