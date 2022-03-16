#> abchc:modifiers/limited_inventory/kill_item
# Function run on dropping glass
# Kills item and resets inventory
# @within abchc:modifiers/limited_inventory/actions
# @context player

kill @e[type=item,nbt={Item:{tag:{abch:{modifiers:{limited_inventory:1b}}}}}]
function abchc:modifiers/limited_inventory/update_inv