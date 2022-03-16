// Write functions for me because I'm lazy lol

const fs = require('fs')

for (let i = 9; i < 36; i++) {
    const mcfunction = `#> abchc:modifiers/limited_inventory/replace/${i}\n# Replace slot ${i}\n# @within abchc:modifiers/limited_inventory/update_inv\n\n#> Get item data to drop item if inventory is full\n# If there's an item in this slot, add to temporary data\nexecute if entity @s[nbt={Inventory:[{Slot:${i}b}]}] run data modify storage abch.__temp__:limited_inventory Item append from entity @s Inventory[{Slot:${i}b}]\nexecute if entity @s[nbt={Inventory:[{Slot:${i}b}]}] run function abchc:modifiers/limited_inventory/drop_item\n\n#> Replace slot item\nitem replace entity @s inventory.${i - 9} with black_stained_glass_pane{abch: {modifiers: {limited_inventory: 1b}}, display: {Name: '{\"text\":\"Locked\",\"italic\":false}'}, HideFlags: 127} 1\n\n#> Play sound\nfunction abchc:modifiers/limited_inventory/sound\n\n#> Set bool to true\nscoreboard players set $bool abch.limited_inventory ${i}`
    
    try {
        fs.writeFileSync(`../${i}.mcfunction`, mcfunction)
        //file written successfully
      } catch (err) {
        console.error(err)
      }
}