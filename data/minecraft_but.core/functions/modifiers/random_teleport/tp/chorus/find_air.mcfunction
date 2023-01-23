#> minecraft_but.core:modifiers/random_teleport/tp/find_air
# Search for air to place the player in
# so player doesn't stay on nether roof
# @context player
# @within minecraft_but.core:modifiers/random_teleport/tp/schedule_air

# If there's suitable ground, end the loop
execute if block ~ ~ ~ #minecraft_but.core:air if block ~ ~-1 ~ #minecraft_but.core:air if block ~ ~-2 ~ #aestd1:cubic run scoreboard players set $limit minecraft_but.random_teleport -10
execute if block ~ ~ ~ #minecraft_but.core:air if block ~ ~-1 ~ #minecraft_but.core:air if block ~ ~-2 ~ #aestd1:cubic run tp @s ~ ~-1 ~
scoreboard players remove $limit minecraft_but.random_teleport 1
execute if score $limit minecraft_but.random_teleport matches 1.. positioned ~ ~-1 ~ run function minecraft_but.core:modifiers/random_teleport/tp/find_air

execute if score $limit minecraft_but.random_teleport matches 0 unless score $tries minecraft_but.random_teleport matches 10.. run function minecraft_but.core:modifiers/random_teleport/tp/look_again