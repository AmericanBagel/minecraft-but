scoreboard players reset time abch.deadly_colors
title @s actionbar {"text":" "}

execute if score @s abch.deadly_colors.color matches 1 if block ~ ~-1 ~ #abchc:colors/red run tag @s add abch.deadly_colors.red.kill
execute if score @s abch.deadly_colors.color matches 2 if block ~ ~-1 ~ #abchc:colors/orange run tag @s add abch.deadly_colors.orange.kill
execute if score @s abch.deadly_colors.color matches 3 if block ~ ~-1 ~ #abchc:colors/yellow run tag @s add abch.deadly_colors.yellow.kill
execute if score @s abch.deadly_colors.color matches 4 if block ~ ~-1 ~ #abchc:colors/green run tag @s add abch.deadly_colors.green.kill
execute if score @s abch.deadly_colors.color matches 5 if block ~ ~-1 ~ #abchc:colors/blue run tag @s add abch.deadly_colors.blue.kill
execute if score @s abch.deadly_colors.color matches 6 if block ~ ~-1 ~ #abchc:colors/violet run tag @s add abch.deadly_colors.violet.kill
execute if score @s abch.deadly_colors.color matches 7 if block ~ ~-1 ~ #abchc:colors/brown run tag @s add abch.deadly_colors.brown.kill
execute if score @s abch.deadly_colors.color matches 8 if block ~ ~-1 ~ #abchc:colors/light run tag @s add abch.deadly_colors.light.kill
execute if score @s abch.deadly_colors.color matches 9 if block ~ ~-1 ~ #abchc:colors/dark run tag @s add abch.deadly_colors.dark.kill

execute if score @s abch.deadly_colors.color matches 1 if block ~ ~ ~ #abchc:colors/red run tag @s add abch.deadly_colors.red.kill
execute if score @s abch.deadly_colors.color matches 2 if block ~ ~ ~ #abchc:colors/orange run tag @s add abch.deadly_colors.orange.kill
execute if score @s abch.deadly_colors.color matches 3 if block ~ ~ ~ #abchc:colors/yellow run tag @s add abch.deadly_colors.yellow.kill
execute if score @s abch.deadly_colors.color matches 4 if block ~ ~ ~ #abchc:colors/green run tag @s add abch.deadly_colors.green.kill
execute if score @s abch.deadly_colors.color matches 5 if block ~ ~ ~ #abchc:colors/blue run tag @s add abch.deadly_colors.blue.kill
execute if score @s abch.deadly_colors.color matches 6 if block ~ ~ ~ #abchc:colors/violet run tag @s add abch.deadly_colors.violet.kill
execute if score @s abch.deadly_colors.color matches 7 if block ~ ~ ~ #abchc:colors/brown run tag @s add abch.deadly_colors.brown.kill
execute if score @s abch.deadly_colors.color matches 8 if block ~ ~ ~ #abchc:colors/light run tag @s add abch.deadly_colors.light.kill
execute if score @s abch.deadly_colors.color matches 9 if block ~ ~ ~ #abchc:colors/dark run tag @s add abch.deadly_colors.dark.kill

execute if score @s abch.deadly_colors.color matches 1 if block ~ ~1 ~ #abchc:colors/red run tag @s add abch.deadly_colors.red.kill
execute if score @s abch.deadly_colors.color matches 2 if block ~ ~1 ~ #abchc:colors/orange run tag @s add abch.deadly_colors.orange.kill
execute if score @s abch.deadly_colors.color matches 3 if block ~ ~1 ~ #abchc:colors/yellow run tag @s add abch.deadly_colors.yellow.kill
execute if score @s abch.deadly_colors.color matches 4 if block ~ ~1 ~ #abchc:colors/green run tag @s add abch.deadly_colors.green.kill
execute if score @s abch.deadly_colors.color matches 5 if block ~ ~1 ~ #abchc:colors/blue run tag @s add abch.deadly_colors.blue.kill
execute if score @s abch.deadly_colors.color matches 6 if block ~ ~1 ~ #abchc:colors/violet run tag @s add abch.deadly_colors.violet.kill
execute if score @s abch.deadly_colors.color matches 7 if block ~ ~1 ~ #abchc:colors/brown run tag @s add abch.deadly_colors.brown.kill
execute if score @s abch.deadly_colors.color matches 8 if block ~ ~1 ~ #abchc:colors/light run tag @s add abch.deadly_colors.light.kill
execute if score @s abch.deadly_colors.color matches 9 if block ~ ~1 ~ #abchc:colors/dark run tag @s add abch.deadly_colors.dark.kill

execute if entity @s[tag=abch.deadly_colors.red.kill] run function abchc:modifiers/deadly_colors/colors/red/kill
execute if entity @s[tag=abch.deadly_colors.orange.kill] run function abchc:modifiers/deadly_colors/colors/orange/kill
execute if entity @s[tag=abch.deadly_colors.yellow.kill] run function abchc:modifiers/deadly_colors/colors/yellow/kill
execute if entity @s[tag=abch.deadly_colors.green.kill] run function abchc:modifiers/deadly_colors/colors/green/kill
execute if entity @s[tag=abch.deadly_colors.blue.kill] run function abchc:modifiers/deadly_colors/colors/blue/kill
execute if entity @s[tag=abch.deadly_colors.violet.kill] run function abchc:modifiers/deadly_colors/colors/violet/kill
execute if entity @s[tag=abch.deadly_colors.brown.kill] run function abchc:modifiers/deadly_colors/colors/brown/kill
execute if entity @s[tag=abch.deadly_colors.light.kill] run function abchc:modifiers/deadly_colors/colors/light/kill
execute if entity @s[tag=abch.deadly_colors.dark.kill] run function abchc:modifiers/deadly_colors/colors/dark/kill