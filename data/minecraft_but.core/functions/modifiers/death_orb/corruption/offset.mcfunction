#> minecraft_but.core:modifiers/death_orb/corruption/offset
#
# Set of nine offsets for 3x3 corruption area
# @context orb
# @within minecraft_but.core:modifiers/death_orb/corruption/directory

execute positioned ~1 ~ ~1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~1 ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~1 ~ ~-1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~-1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~-1 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt