#> minecraft_but.coreraft_but.core:modifiers/teleport_chorus/tp_overworld
# TP player to overworld

#> Cancel other commands in teleport
scoreboard players set $bool minecraft_but.teleport_chorus 1

#> TP player to overworld
execute in minecraft:overworld run tp @s ~ ~ ~

#> Ground player
execute at @s run spreadplayers ~ ~ 0 1 false @s