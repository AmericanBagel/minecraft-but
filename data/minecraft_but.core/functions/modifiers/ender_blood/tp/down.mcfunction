#> minecraft_but.core:modifiers/ender_blood/tp/down
# Recursively search down until limit is reached or solid ground is found
# @within minecraft_but.core:modifiers/ender_blood/tp/start_down
# @context player at offset

# Decrement limit
scoreboard players remove $limit minecraft_but.ender_blood 1
# Distance down for comparing distances between down and up in the future
scoreboard players add $down_distance minecraft_but.ender_blood 1

# Check if solid ground has been found
execute if block ~ ~-1 ~ #aestd1:all_but_air if block ~ ~ ~ #aestd1:air if block ~ ~1 ~ #aestd1:air run scoreboard players set $grounded minecraft_but.ender_blood 1

# If limit hasn't been reached and solid ground has not been found, run this function again but positioned down
execute if score $limit minecraft_but.ender_blood matches 1.. unless score $grounded minecraft_but.ender_blood matches 1.. positioned ~ ~-.5 ~ run function minecraft_but.core:modifiers/ender_blood/tp/down

# If solid ground has been found, tp
execute if score $grounded minecraft_but.ender_blood matches 1.. run function minecraft_but.core:modifiers/ender_blood/tp/tp