#> minecraft_but.coreraft_but.core:modifiers/random_structures/visuals
# Sound and audio effects to make the new features cool
# @within minecraft_but.coreraft_but.core:modifiers/random_structures/placefeature
# @context feature marker

# Default
execute unless score random_structures.sfx minecraft_but.config matches 0..1 if score random_structures.sfx minecraft_but.default matches 1.. run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1

# Config
execute if score random_structures.sfx minecraft_but.config matches 1.. run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1