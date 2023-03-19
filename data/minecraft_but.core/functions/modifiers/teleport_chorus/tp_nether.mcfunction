#> minecraft_but.coreraft_but.core:modifiers/teleport_chorus/tp_nether
# TP player to the nether
# @context player
# @within minecraft_but.coreraft_but.core:teleport_chorus/**

#> Cancel other commands in teleport
scoreboard players set $bool minecraft_but.teleport_chorus 1

#> TP player to nether
execute in the_nether run tp @s ~ 128 ~

#> Search for air below player recursively
scoreboard players set $limit minecraft_but.teleport_chorus 126

tag @s add minecraft_but.teleport_chorus.nether
schedule function minecraft_but.coreraft_but.core:modifiers/teleport_chorus/schedule_air 1t