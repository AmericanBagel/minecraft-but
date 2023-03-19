#> minecraft_but.coreraft_but.core:modifiers/death_orb/forceload/add
# Try to add forceload chunk. If forceload chunk is added, spawn forceload marker.
# @context orb
# @within minecraft_but.coreraft_but.core:modifiers/death_orb/forceload/directory
execute store success score $forceload minecraft_but.death_orb run forceload add ~ ~
execute if score $forceload minecraft_but.death_orb matches 1.. run summon marker ~ ~ ~ {Tags:["global.ignore","minecraft_but","minecraft_but.death_orb","minecraft_but.death_orb.forceload","global.forceload"],CustomName:'{"text":"minecraft_but.death_orb.forceload"}'}