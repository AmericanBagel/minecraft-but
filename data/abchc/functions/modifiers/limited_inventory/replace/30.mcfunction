#> abchc:modifiers/limited_inventory/replace/30
# Replace slot 30
# @within abchc:modifiers/limited_inventory/update_inv

#> Get item data to drop item if inventory is full
# If there's an item in this slot, add to temporary data
execute if entity @s[nbt={Inventory:[{Slot:30b}]}] run data modify storage abch.__temp__:limited_inventory Item append from entity @s Inventory[{Slot:30b}]
execute if entity @s[nbt={Inventory:[{Slot:30b}]}] run function abchc:modifiers/limited_inventory/drop_item

#> Replace slot item
item replace entity @s inventory.21 with black_stained_glass_pane{abch: {modifiers: {limited_inventory: 1b}}, display: {Name: '{"text":"Locked","italic":false}'}, HideFlags: 127} 1

#> Play sound
function abchc:modifiers/limited_inventory/sound

#> Set bool to true
scoreboard players set $bool abch.limited_inventory 30