#> abchc:modifiers/teleport_chorus/tp_overworld
# TP player to overworld

#> Cancel other commands in teleport
scoreboard players set $bool abch.teleport_chorus 1

#> TP player to overworld
execute in minecraft:overworld run tp @s ~ ~ ~

#> Ground player
execute at @s run spreadplayers ~ ~ 0 1 false @s