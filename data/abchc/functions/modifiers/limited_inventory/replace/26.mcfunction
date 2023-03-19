#> abchc:modifiers/limited_inventory/replace/26
# Replace slot 26
# @within abchc:modifiers/limited_inventory/update_inv

#> Get item data to drop item if inventory is full
# If there's an item in this slot, add to temporary data
execute if entity @s[nbt={Inventory:[{Slot:26b}]}] run data modify storage abch.__temp__:limited_inventory Item append from entity @s Inventory[{Slot:26b}]
execute if entity @s[nbt={Inventory:[{Slot:26b}]}] run function abchc:modifiers/limited_inventory/drop_item

#> Replace slot item
item replace entity @s inventory.17 with black_stained_glass_pane{abch: {modifiers: {limited_inventory: 1b}}, display: {Name: '{"text":"Locked","italic":false}'}, HideFlags: 127} 1

#> Play sound
function abchc:modifiers/limited_inventory/sound

#> Set bool to true
scoreboard players set $bool abch.limited_inventory 26