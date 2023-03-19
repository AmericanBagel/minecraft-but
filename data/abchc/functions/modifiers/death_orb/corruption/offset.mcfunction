#> abchc:modifiers/death_orb/corruption/offset
#
# Set of nine offsets for 3x3 corruption area
# @context orb
# @within abchc:modifiers/death_orb/corruption/directory

execute positioned ~1 ~ ~1 run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~1 run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~1 run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~ run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~ run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~1 ~ ~ run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~1 ~ ~-1 run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~-1 run function abchc:modifiers/death_orb/corruption/corrupt
execute positioned ~-1 ~ ~-1 run function abchc:modifiers/death_orb/corruption/corrupt