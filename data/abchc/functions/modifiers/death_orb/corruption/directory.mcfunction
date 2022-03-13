#> abchc:modifiers/death_orb/corruption/directory

#execute positioned ~ ~-2 ~ run function abchc:modifiers/death_orb/corruption/offset
#execute positioned ~ ~-1 ~ run function abchc:modifiers/death_orb/corruption/offset
#function abchc:modifiers/death_orb/corruption/offset
#execute positioned ~ ~1 ~ run function abchc:modifiers/death_orb/corruption/offset

execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function abchc:modifiers/death_orb/corruption/effect
execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy