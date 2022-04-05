#> abchc:modifiers/feature_fanatic/visuals
# Sound and audio effects to make the new features cool
# @within abchc:modifiers/feature_fanatic/placefeature
# @context feature marker

# Default
execute unless score feature_fanatic.sfx abch.config matches 0..1 if score feature_fanatic.sfx abch.default matches 1.. run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1

# Config
execute if score feature_fanatic.sfx abch.config matches 1.. run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1