#> abchc:modifiers/teleport_chorus/tp_nether
# TP player to the nether
# @context player
# @within abchc:teleport_chorus/**

#> Cancel other commands in teleport
scoreboard players set $bool abch.teleport_chorus 1

#> TP player to nether
execute in the_nether run tp @s ~ 128 ~

#> Search for air below player recursively
scoreboard players set $limit abch.teleport_chorus 126

tag @s add abch.teleport_chorus.nether
schedule function abchc:modifiers/teleport_chorus/schedule_air 1t