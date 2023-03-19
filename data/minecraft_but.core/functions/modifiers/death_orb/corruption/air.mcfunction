#> minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/air
# Destroy mineable blocks around death orb
# @within minecraft_but.coreraft_but.core:modifiers/death_orb/actions
# @context death orb
execute positioned ~ ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~ ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~1 if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~ ~ ~1 if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~-1 if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~ ~ ~-1 if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~1 ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~1 ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~-1 ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~-1 ~ ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~ ~1 ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy

execute positioned ~ ~-1 ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run function minecraft_but.coreraft_but.core:modifiers/death_orb/corruption/effect
execute positioned ~ ~-1 ~ if block ~ ~ ~ #aestd1:all_but_air unless block ~ ~ ~ #aestd1:unbreakable run setblock ~ ~ ~ air destroy