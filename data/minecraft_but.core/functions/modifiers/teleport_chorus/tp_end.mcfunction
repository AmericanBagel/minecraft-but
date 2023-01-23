#> minecraft_but.core:modifiers/teleport_chorus/tp_end
# Try to TP player to end
# @context player
# @within minecraft_but.core:modifiers/teleport_chorus/**

#> Cancel other commands in teleport
scoreboard players set $bool minecraft_but.teleport_chorus 1

#> Teleport player to the end
execute in minecraft:the_end run tp @s ~ ~ ~

#> Ground player if there is ground
execute at @s run spreadplayers ~ ~ 0 1 false @s

#> If there is no ground, search for ground
execute at @s unless block ~ ~-1 ~ #aestd1:cubic run function minecraft_but.core:modifiers/teleport_chorus/ground_end