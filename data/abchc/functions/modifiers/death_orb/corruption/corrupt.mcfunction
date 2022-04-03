#> abchc:modifiers/death_orb/corruption/corrupt
# @within abchc:modifiers/death_orb/corruption/directory

execute if block ~ ~ ~ #minecraft:small_flowers unless block ~ ~ ~ wither_rose run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #abchc:modifiers/death_orb/soil run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #abchc:modifiers/death_orb/bush run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:nylium run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:base_stone_overworld unless block ~ ~ ~ minecraft:deepslate run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:sand run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #abchc:modifiers/death_orb/sandstone run function abchc:modifiers/death_orb/corruption/effect

execute if block ~ ~ ~ #minecraft:small_flowers run setblock ~ ~ ~ wither_rose
# snapshot
execute if block ~ ~ ~ #abchc:modifiers/death_orb/soil run setblock ~ ~ ~ sculk
execute if block ~ ~ ~ #abchc:modifiers/death_orb/bush run setblock ~ ~ ~ dead_bush
execute if block ~ ~ ~ #minecraft:nylium run setblock ~ ~ ~ netherrack
execute if block ~ ~ ~ #minecraft:base_stone_overworld unless block ~ ~ ~ minecraft:deepslate run setblock ~ ~ ~ deepslate
execute if block ~ ~ ~ #minecraft:sand run setblock ~ ~ ~ soul_sand
execute if block ~ ~ ~ #abchc:modifiers/death_orb/sandstone run setblock ~ ~ ~ end_stone


execute if block ~ ~ ~ #minecraft:leaves run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:logs run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air
execute if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ air