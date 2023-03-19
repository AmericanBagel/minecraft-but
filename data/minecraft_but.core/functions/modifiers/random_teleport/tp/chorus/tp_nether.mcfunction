#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/tp_nether
# TP player to the nether
# @context player
# @within minecraft_but.coreraft_but.core:random_teleport/**

#> Search for air below player recursively
scoreboard players set $limit minecraft_but.random_teleport 126

tag @s add minecraft_but.random_teleport.nether
schedule function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/schedule_air 1t