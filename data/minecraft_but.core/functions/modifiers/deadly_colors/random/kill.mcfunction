scoreboard players reset time minecraft_but.deadly_colors
title @s actionbar {"text":" "}

execute if score @s minecraft_but.deadly_colors.color matches 1 if block ~ ~-1 ~ #minecraft_but.core:colors/red run tag @s add minecraft_but.deadly_colors.red.kill
execute if score @s minecraft_but.deadly_colors.color matches 2 if block ~ ~-1 ~ #minecraft_but.core:colors/orange run tag @s add minecraft_but.deadly_colors.orange.kill
execute if score @s minecraft_but.deadly_colors.color matches 3 if block ~ ~-1 ~ #minecraft_but.core:colors/yellow run tag @s add minecraft_but.deadly_colors.yellow.kill
execute if score @s minecraft_but.deadly_colors.color matches 4 if block ~ ~-1 ~ #minecraft_but.core:colors/green run tag @s add minecraft_but.deadly_colors.green.kill
execute if score @s minecraft_but.deadly_colors.color matches 5 if block ~ ~-1 ~ #minecraft_but.core:colors/blue run tag @s add minecraft_but.deadly_colors.blue.kill
execute if score @s minecraft_but.deadly_colors.color matches 6 if block ~ ~-1 ~ #minecraft_but.core:colors/violet run tag @s add minecraft_but.deadly_colors.violet.kill
execute if score @s minecraft_but.deadly_colors.color matches 7 if block ~ ~-1 ~ #minecraft_but.core:colors/brown run tag @s add minecraft_but.deadly_colors.brown.kill
execute if score @s minecraft_but.deadly_colors.color matches 8 if block ~ ~-1 ~ #minecraft_but.core:colors/light run tag @s add minecraft_but.deadly_colors.light.kill
execute if score @s minecraft_but.deadly_colors.color matches 9 if block ~ ~-1 ~ #minecraft_but.core:colors/dark run tag @s add minecraft_but.deadly_colors.dark.kill

execute if score @s minecraft_but.deadly_colors.color matches 1 if block ~ ~ ~ #minecraft_but.core:colors/red run tag @s add minecraft_but.deadly_colors.red.kill
execute if score @s minecraft_but.deadly_colors.color matches 2 if block ~ ~ ~ #minecraft_but.core:colors/orange run tag @s add minecraft_but.deadly_colors.orange.kill
execute if score @s minecraft_but.deadly_colors.color matches 3 if block ~ ~ ~ #minecraft_but.core:colors/yellow run tag @s add minecraft_but.deadly_colors.yellow.kill
execute if score @s minecraft_but.deadly_colors.color matches 4 if block ~ ~ ~ #minecraft_but.core:colors/green run tag @s add minecraft_but.deadly_colors.green.kill
execute if score @s minecraft_but.deadly_colors.color matches 5 if block ~ ~ ~ #minecraft_but.core:colors/blue run tag @s add minecraft_but.deadly_colors.blue.kill
execute if score @s minecraft_but.deadly_colors.color matches 6 if block ~ ~ ~ #minecraft_but.core:colors/violet run tag @s add minecraft_but.deadly_colors.violet.kill
execute if score @s minecraft_but.deadly_colors.color matches 7 if block ~ ~ ~ #minecraft_but.core:colors/brown run tag @s add minecraft_but.deadly_colors.brown.kill
execute if score @s minecraft_but.deadly_colors.color matches 8 if block ~ ~ ~ #minecraft_but.core:colors/light run tag @s add minecraft_but.deadly_colors.light.kill
execute if score @s minecraft_but.deadly_colors.color matches 9 if block ~ ~ ~ #minecraft_but.core:colors/dark run tag @s add minecraft_but.deadly_colors.dark.kill

execute if score @s minecraft_but.deadly_colors.color matches 1 if block ~ ~1 ~ #minecraft_but.core:colors/red run tag @s add minecraft_but.deadly_colors.red.kill
execute if score @s minecraft_but.deadly_colors.color matches 2 if block ~ ~1 ~ #minecraft_but.core:colors/orange run tag @s add minecraft_but.deadly_colors.orange.kill
execute if score @s minecraft_but.deadly_colors.color matches 3 if block ~ ~1 ~ #minecraft_but.core:colors/yellow run tag @s add minecraft_but.deadly_colors.yellow.kill
execute if score @s minecraft_but.deadly_colors.color matches 4 if block ~ ~1 ~ #minecraft_but.core:colors/green run tag @s add minecraft_but.deadly_colors.green.kill
execute if score @s minecraft_but.deadly_colors.color matches 5 if block ~ ~1 ~ #minecraft_but.core:colors/blue run tag @s add minecraft_but.deadly_colors.blue.kill
execute if score @s minecraft_but.deadly_colors.color matches 6 if block ~ ~1 ~ #minecraft_but.core:colors/violet run tag @s add minecraft_but.deadly_colors.violet.kill
execute if score @s minecraft_but.deadly_colors.color matches 7 if block ~ ~1 ~ #minecraft_but.core:colors/brown run tag @s add minecraft_but.deadly_colors.brown.kill
execute if score @s minecraft_but.deadly_colors.color matches 8 if block ~ ~1 ~ #minecraft_but.core:colors/light run tag @s add minecraft_but.deadly_colors.light.kill
execute if score @s minecraft_but.deadly_colors.color matches 9 if block ~ ~1 ~ #minecraft_but.core:colors/dark run tag @s add minecraft_but.deadly_colors.dark.kill

execute if entity @s[ tag=minecraft_but.deadly_colors.red.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/red/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.orange.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/orange/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.yellow.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/yellow/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.green.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/green/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.blue.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/blue/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.violet.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/violet/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.brown.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/brown/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.light.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/light/kill
execute if entity @s[ tag=minecraft_but.deadly_colors.dark.kill ] run function minecraft_but.core:modifiers/deadly_colors/colors/dark/kill