#> minecraft_but.coreraft_but.core:modifiers/limited_inventory/replace/17
# Replace slot 17
# @within minecraft_but.coreraft_but.core:modifiers/limited_inventory/update_inv

#> Get item data to drop item if inventory is full
# If there's an item in this slot, add to temporary data
execute if entity @s[nbt={Inventory:[{Slot:17b}]}] run data modify storage minecraft_but.__temp__:limited_inventory Item append from entity @s Inventory[{Slot:17b}]
execute if entity @s[nbt={Inventory:[{Slot:17b}]}] run function minecraft_but.coreraft_but.core:modifiers/limited_inventory/drop_item

#> Replace slot item
item replace entity @s inventory.8 with black_stained_glass_pane{minecraft_but: {modifiers: {limited_inventory: 1b}}, display: {Name: '{"text":"Locked","italic":false}'}, HideFlags: 127} 1

#> Play sound
function minecraft_but.coreraft_but.core:modifiers/limited_inventory/sound

#> Set bool to true
scoreboard players set $bool minecraft_but.limited_inventory 17