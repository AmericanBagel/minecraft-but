#> minecraft_but.core:modifiers/death_orb/corruption/try_corrupt
# Try to corrupt blocks in a + shape around the death orb.
# @within minecraft_but.core:modifiers/death_orb/corruption/directory
# @context orb
execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.core:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy