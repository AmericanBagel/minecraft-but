#> minecraft_but.coreraft_but.core:modifiers/random_structures/loop
# Loop place feature spawn attempts based on default chance value
# @within minecraft_but.coreraft_but.core:modifiers/random_structures/start_loop_default
# @context player

#> Chance to place feature
execute if predicate minecraft_but.coreraft_but.core:2pct minecraft_but.coreunction minecraft_but.core:modifiers/random_structures/pick_place

#> Remove counter
scoreboard players remove #counter minecraft_but.modifier.temp 1

#tellraw @a [{"score":{"name": "#counter","objective": "minecraft_but.modifier.temp"}}]

#> Continue loop
execute if score #counter minecraft_but.modifier.temp matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/random_structures/loop