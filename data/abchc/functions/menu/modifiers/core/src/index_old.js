const fs = require('fs');

const modifiers = ["2020_mode", "anvil_rain", "bedrock_touch", "blinding_damage", "blinding_light", "blindness", "botanophobia", "carnivore", "chunk_error", "confetti_funeral", "crawling", "creeper_mobs", "creeper_nukes", "creeper_reinforcements", "damage_nausea", "deadly_colors", "deadly_falls", "death_orb", "delicate_explosives", "effect_arrows", "ender_blood", "explosive_bush", "explosive_coal", "explosive_eggs", "explosive_phantoms", "explosive_sight", "explosive_snowballs", "explosive_xp", "fast_arrows", "fast_creepers", "feature_fanatic", "fire_rain", "fire_walker", "flying_skeletons", "frozen_time", "herbivore", "insta_creeper", "keep_moving", "lag", "lazy_inventory", "storm", "limited_inventory", "look_straight", "mermaid", "toxic", "meteor", "midas_touch", "mobs_glow", "mobs_to_to_you", "no_gravity", "no_jump", "no_sneak", "no_walk", "op_bats", "overworld_ghasts", "pacifists", "pigification", "piglinator", "players_glow", "potion_food", "random_effect", "random_teleport", "realistic_spiders", "reverse_gravity", "schlatt_mode", "stacked_pigs", "superhot", "suspicious_injury", "teleport_chorus", "tnt_bats"];

for (let i = 0; i < modifiers.length; i++) {
    /*
    try {
        fs.mkdirSync(`../${modifiers[i]}`)
        //file written successfully
      } catch (err) {
        console.error(err)
      }
      */
    
    try {
        // Create folder
        fs.mkdirSync(`../${modifiers[i]}`)

        // Create "on" function
        fs.writeFileSync(`../${modifiers[i]}/on.mcfunction`,`#> abchc:menu/modifiers/core/${modifiers[i]}/on\n#Automatically generated toggle on function for ${modifiers[i]}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifiers[i]} abch.toggle 1\n\n# Run load function\nfunction abchc:modifiers/${modifiers[i]}/load\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/modifiers/directory`)

        // Create "off" function
        fs.writeFileSync(`../${modifiers[i]}/off.mcfunction`, `#> abchc:menu/modifiers/core/${modifiers[i]}/off\n#Automatically generated toggle off function for ${modifiers[i]}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifiers[i]} abch.toggle 0\n\n# Run unload function\nfunction abchc:modifiers/${modifiers[i]}/unload\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/modifiers/directory`)

        // Config folder
        fs.writeFileSync(`../${modifiers[i]}/config.mcfunction`, `#> abchc:menu/modifiers/core/2020_mode/config\n# Config menu for ${modifiers[i]} with help from\n# the script in ../src\n# @within abchc:menu/**\n# @context player\n\n`)

        

        //file written successfully
      } catch (err) {
        console.error(err)
      }
}