#> abchc:modifiers/limited_inventory/clear_inv
# Update player's inventory to lock slots
# @within abchc:modifiers/limited_inventory/actions
# @context player

#> If glass is not found in any enabled slot, add it back.
execute if score @s abch.limited_inventory.slots matches 1.. if entity @s[ nbt={Inventory: [ {Slot: 9b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.0 with air
execute if score @s abch.limited_inventory.slots matches 2.. if entity @s[ nbt={Inventory: [ {Slot: 10b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.1 with air
execute if score @s abch.limited_inventory.slots matches 3.. if entity @s[ nbt={Inventory: [ {Slot: 11b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.2 with air
execute if score @s abch.limited_inventory.slots matches 4.. if entity @s[ nbt={Inventory: [ {Slot: 12b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.3 with air
execute if score @s abch.limited_inventory.slots matches 5.. if entity @s[ nbt={Inventory: [ {Slot: 13b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.4 with air
execute if score @s abch.limited_inventory.slots matches 6.. if entity @s[ nbt={Inventory: [ {Slot: 14b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.5 with air
execute if score @s abch.limited_inventory.slots matches 7.. if entity @s[ nbt={Inventory: [ {Slot: 15b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.6 with air
execute if score @s abch.limited_inventory.slots matches 8.. if entity @s[ nbt={Inventory: [ {Slot: 16b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.7 with air
execute if score @s abch.limited_inventory.slots matches 9.. if entity @s[ nbt={Inventory: [ {Slot: 17b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.8 with air
execute if score @s abch.limited_inventory.slots matches 10.. if entity @s[ nbt={Inventory: [ {Slot: 18b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.9 with air
execute if score @s abch.limited_inventory.slots matches 11.. if entity @s[ nbt={Inventory: [ {Slot: 19b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.10 with air
execute if score @s abch.limited_inventory.slots matches 12.. if entity @s[ nbt={Inventory: [ {Slot: 20b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.11 with air
execute if score @s abch.limited_inventory.slots matches 13.. if entity @s[ nbt={Inventory: [ {Slot: 21b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.12 with air
execute if score @s abch.limited_inventory.slots matches 14.. if entity @s[ nbt={Inventory: [ {Slot: 22b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.13 with air
execute if score @s abch.limited_inventory.slots matches 15.. if entity @s[ nbt={Inventory: [ {Slot: 23b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.14 with air
execute if score @s abch.limited_inventory.slots matches 16.. if entity @s[ nbt={Inventory: [ {Slot: 24b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.15 with air
execute if score @s abch.limited_inventory.slots matches 17.. if entity @s[ nbt={Inventory: [ {Slot: 25b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.16 with air
execute if score @s abch.limited_inventory.slots matches 18.. if entity @s[ nbt={Inventory: [ {Slot: 26b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.17 with air
execute if score @s abch.limited_inventory.slots matches 19.. if entity @s[ nbt={Inventory: [ {Slot: 27b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.18 with air
execute if score @s abch.limited_inventory.slots matches 20.. if entity @s[ nbt={Inventory: [ {Slot: 28b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.19 with air
execute if score @s abch.limited_inventory.slots matches 21.. if entity @s[ nbt={Inventory: [ {Slot: 29b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.20 with air
execute if score @s abch.limited_inventory.slots matches 22.. if entity @s[ nbt={Inventory: [ {Slot: 30b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.21 with air
execute if score @s abch.limited_inventory.slots matches 23.. if entity @s[ nbt={Inventory: [ {Slot: 31b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.22 with air
execute if score @s abch.limited_inventory.slots matches 24.. if entity @s[ nbt={Inventory: [ {Slot: 32b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.23 with air
execute if score @s abch.limited_inventory.slots matches 25.. if entity @s[ nbt={Inventory: [ {Slot: 33b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.24 with air
execute if score @s abch.limited_inventory.slots matches 26.. if entity @s[ nbt={Inventory: [ {Slot: 34b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.25 with air
execute if score @s abch.limited_inventory.slots matches 27.. if entity @s[ nbt={Inventory: [ {Slot: 35b, tag: {abch: {modifiers: {limited_inventory: 1b}}}} ]} ] run item replace entity @s inventory.26 with air