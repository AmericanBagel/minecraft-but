#> abchc:modifiers/limited_inventory/update_inv
# Update player's inventory to lock slots
# @within abchc:modifiers/limited_inventory/actions
# @context player
# @output
#   storage abch.__temp__:limited_inventory Item
#       Replaced item's data. Usually the result of
#       a player clicking onto glass with an item
#       on their cursor.

#> Reset item storage
#data remove storage abch.__temp__:limited_inventory Item

#> If glass is not found in any enabled slot, add it back.
execute if score @s abch.limited_inventory.slots matches ..26 unless entity @s[ nbt={Inventory: [ {Slot: 35b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/35
execute if score @s abch.limited_inventory.slots matches ..25 unless entity @s[ nbt={Inventory: [ {Slot: 34b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/34
execute if score @s abch.limited_inventory.slots matches ..24 unless entity @s[ nbt={Inventory: [ {Slot: 33b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/33
execute if score @s abch.limited_inventory.slots matches ..23 unless entity @s[ nbt={Inventory: [ {Slot: 32b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/32
execute if score @s abch.limited_inventory.slots matches ..22 unless entity @s[ nbt={Inventory: [ {Slot: 31b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/31
execute if score @s abch.limited_inventory.slots matches ..21 unless entity @s[ nbt={Inventory: [ {Slot: 30b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/30
execute if score @s abch.limited_inventory.slots matches ..20 unless entity @s[ nbt={Inventory: [ {Slot: 29b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/29
execute if score @s abch.limited_inventory.slots matches ..19 unless entity @s[ nbt={Inventory: [ {Slot: 28b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/28
execute if score @s abch.limited_inventory.slots matches ..18 unless entity @s[ nbt={Inventory: [ {Slot: 27b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/27
execute if score @s abch.limited_inventory.slots matches ..17 unless entity @s[ nbt={Inventory: [ {Slot: 26b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/26
execute if score @s abch.limited_inventory.slots matches ..16 unless entity @s[ nbt={Inventory: [ {Slot: 25b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/25
execute if score @s abch.limited_inventory.slots matches ..15 unless entity @s[ nbt={Inventory: [ {Slot: 24b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/24
execute if score @s abch.limited_inventory.slots matches ..14 unless entity @s[ nbt={Inventory: [ {Slot: 23b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/23
execute if score @s abch.limited_inventory.slots matches ..13 unless entity @s[ nbt={Inventory: [ {Slot: 22b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/22
execute if score @s abch.limited_inventory.slots matches ..12 unless entity @s[ nbt={Inventory: [ {Slot: 21b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/21
execute if score @s abch.limited_inventory.slots matches ..11 unless entity @s[ nbt={Inventory: [ {Slot: 20b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/20
execute if score @s abch.limited_inventory.slots matches ..10 unless entity @s[ nbt={Inventory: [ {Slot: 19b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/19
execute if score @s abch.limited_inventory.slots matches ..9 unless entity @s[ nbt={Inventory: [ {Slot: 18b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/18
execute if score @s abch.limited_inventory.slots matches ..8 unless entity @s[ nbt={Inventory: [ {Slot: 17b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/17
execute if score @s abch.limited_inventory.slots matches ..7 unless entity @s[ nbt={Inventory: [ {Slot: 16b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/16
execute if score @s abch.limited_inventory.slots matches ..6 unless entity @s[ nbt={Inventory: [ {Slot: 15b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/15
execute if score @s abch.limited_inventory.slots matches ..5 unless entity @s[ nbt={Inventory: [ {Slot: 14b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/14
execute if score @s abch.limited_inventory.slots matches ..4 unless entity @s[ nbt={Inventory: [ {Slot: 13b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/13
execute if score @s abch.limited_inventory.slots matches ..3 unless entity @s[ nbt={Inventory: [ {Slot: 12b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/12
execute if score @s abch.limited_inventory.slots matches ..2 unless entity @s[ nbt={Inventory: [ {Slot: 11b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/11
execute if score @s abch.limited_inventory.slots matches ..1 unless entity @s[ nbt={Inventory: [ {Slot: 10b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/10
execute if score @s abch.limited_inventory.slots matches ..0 unless entity @s[ nbt={Inventory: [ {Slot: 9b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run function abchc:modifiers/limited_inventory/replace/9

#> Drop replaced item
#execute if data storage abch.__temp__:limited_inventory Item run function abchc:modifiers/limited_inventory/drop_item