#> minecraft_but.core:modifiers/death_orb/corruption/directory
# @context orb
# @within minecraft_but.core:modifiers/death_orb/main

#execute positioned ~ ~-2 ~ run function minecraft_but.core:modifiers/death_orb/corruption/offset
#execute positioned ~ ~-1 ~ run function minecraft_but.core:modifiers/death_orb/corruption/offset
#function minecraft_but.core:modifiers/death_orb/corruption/offset
#execute positioned ~ ~1 ~ run function minecraft_but.core:modifiers/death_orb/corruption/offset

#execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.core:modifiers/death_orb/corruption/effect
#execute if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~.5 ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~-.5 ~ ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~.5 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~ ~-.5 run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~.5 ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt
execute positioned ~ ~-.5 ~ run function minecraft_but.core:modifiers/death_orb/corruption/corrupt