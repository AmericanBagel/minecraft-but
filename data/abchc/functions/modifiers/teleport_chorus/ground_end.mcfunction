#> abchc:modifiers/teleport_chorus/ground_end
# Try to find solid ground in the end
# @context player
# @within abchc:modifiers/teleport_chorus/tp_end

#> Increase tries
scoreboard players add $tries abch.teleport_chorus 1

#> Use spreadplayers to find solid ground
# Increases per attempt to try to keep the player
# as close to the original position as possible

execute if score $tries abch.teleport_chorus matches 1 run spreadplayers ~ ~ 1 10 false @s
execute if score $tries abch.teleport_chorus matches 2 run spreadplayers ~ ~ 1 20 false @s
execute if score $tries abch.teleport_chorus matches 3 run spreadplayers ~ ~ 1 50 false @s
execute if score $tries abch.teleport_chorus matches 4 run spreadplayers ~ ~ 1 100 false @s
execute if score $tries abch.teleport_chorus matches 5 run spreadplayers ~ ~ 1 250 false @s
execute if score $tries abch.teleport_chorus matches 6 run spreadplayers ~ ~ 1 500 false @s
execute if score $tries abch.teleport_chorus matches 7 run spreadplayers ~ ~ 1 1000 false @s
execute if score $tries abch.teleport_chorus matches 8 run spreadplayers ~ ~ 1 2000 false @s
execute if score $tries abch.teleport_chorus matches 9 run spreadplayers ~ ~ 1 2500 false @s
execute if score $tries abch.teleport_chorus matches 10 run spreadplayers ~ ~ 1 3000 false @s

#> Repeat loop if no ground is found
execute unless score $tries abch.teleport_chorus matches 10.. unless block ~ ~-1 ~ #aestd1:cubic run function abchc:modifiers/teleport_chorus/ground_end