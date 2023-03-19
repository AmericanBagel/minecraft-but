#> minecraft_but.coreraft_but.core:modifiers/teleport_chorus/look_again
# Function to run if searching for solid ground
# in the nether didn't work
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/teleport_chorus/tp_nether

execute unless score $tries minecraft_but.teleport_chorus matches 1.. run spreadplayers ~ ~ 3 10 false @s
execute if score $tries minecraft_but.teleport_chorus matches 1 run spreadplayers ~ ~ 3 15 false @s
execute if score $tries minecraft_but.teleport_chorus matches 2 run spreadplayers ~ ~ 3 20 false @s
execute if score $tries minecraft_but.teleport_chorus matches 3 run spreadplayers ~ ~ 3 25 false @s
execute if score $tries minecraft_but.teleport_chorus matches 4 run spreadplayers ~ ~ 3 30 false @s
execute if score $tries minecraft_but.teleport_chorus matches 5 run spreadplayers ~ ~ 3 50 false @s
execute if score $tries minecraft_but.teleport_chorus matches 6 run spreadplayers ~ ~ 3 75 false @s
execute if score $tries minecraft_but.teleport_chorus matches 7 run spreadplayers ~ ~ 3 100 false @s
execute if score $tries minecraft_but.teleport_chorus matches 8 run spreadplayers ~ ~ 3 250 false @s
execute if score $tries minecraft_but.teleport_chorus matches 9 run spreadplayers ~ ~ 3 1000 false @s
execute if score $tries minecraft_but.teleport_chorus matches 10 run spreadplayers ~ ~ 3 2500 false @s

scoreboard players set $limit minecraft_but.teleport_chorus 126
scoreboard players add $tries minecraft_but.teleport_chorus 1
execute at @s run function minecraft_but.coreraft_but.core:modifiers/teleport_chorus/find_air