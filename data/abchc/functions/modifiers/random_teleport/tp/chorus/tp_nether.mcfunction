#> abchc:modifiers/random_teleport/tp/tp_nether
# TP player to the nether
# @context player
# @within abchc:random_teleport/**

#> Search for air below player recursively
scoreboard players set $limit abch.random_teleport 126

tag @s add abch.random_teleport.nether
schedule function abchc:modifiers/random_teleport/tp/schedule_air 1t