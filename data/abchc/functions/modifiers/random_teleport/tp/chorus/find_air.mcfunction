#> abchc:modifiers/random_teleport/tp/find_air
# Search for air to place the player in
# so player doesn't stay on nether roof
# @context player
# @within abchc:modifiers/random_teleport/tp/schedule_air

# If there's suitable ground, end the loop
execute if block ~ ~ ~ #abchc:air if block ~ ~-1 ~ #abchc:air if block ~ ~-2 ~ #aestd1:cubic run scoreboard players set $limit abch.random_teleport -10
execute if block ~ ~ ~ #abchc:air if block ~ ~-1 ~ #abchc:air if block ~ ~-2 ~ #aestd1:cubic run tp @s ~ ~-1 ~
scoreboard players remove $limit abch.random_teleport 1
execute if score $limit abch.random_teleport matches 1.. positioned ~ ~-1 ~ run function abchc:modifiers/random_teleport/tp/find_air

execute if score $limit abch.random_teleport matches 0 unless score $tries abch.random_teleport matches 10.. run function abchc:modifiers/random_teleport/tp/look_again