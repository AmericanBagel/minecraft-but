#> minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/corrupt
# @within minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/directory

execute if block ~ ~ ~ #minecraft:small_flowers unless block ~ ~ ~ wither_rose run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/soil minecraft_but.coreunction minecraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/bush minecraft_but.coreunction minecraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:nylium run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:base_stone_overworld unless block ~ ~ ~ minecraft:deepslate run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:sand run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/sandstone minecraft_but.coreunction minecraft_but.core:modifiers/death_orb/corruption/effect

execute if block ~ ~ ~ #minecraft:small_flowers run setblock ~ ~ ~ wither_rose
# snapshot
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/soil run setblock ~ ~ ~ sculk
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/bush run setblock ~ ~ ~ dead_bush
execute if block ~ ~ ~ #minecraft:nylium run setblock ~ ~ ~ netherrack
execute if block ~ ~ ~ #minecraft:base_stone_overworld unless block ~ ~ ~ minecraft:deepslate run setblock ~ ~ ~ deepslate
execute if block ~ ~ ~ #minecraft:sand run setblock ~ ~ ~ soul_sand
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:modifiers/death_orb/sandstone run setblock ~ ~ ~ end_stone


execute if block ~ ~ ~ #minecraft:leaves run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:logs run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air
execute if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ air