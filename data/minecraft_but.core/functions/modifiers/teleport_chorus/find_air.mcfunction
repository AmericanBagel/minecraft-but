#> minecraft_but.core:modifiers/teleport_chorus/find_air
# Search for air to place the player in
# so player doesn't stay on nether roof
# @context player
# @within minecraft_but.core:modifiers/teleport_chorus/schedule_air

# If there's suitable ground, end the loop
execute if block ~ ~ ~ #minecraft_but.core:air if block ~ ~-1 ~ #minecraft_but.core:air if block ~ ~-2 ~ #aestd1:cubic run scoreboard players set $limit minecraft_but.teleport_chorus -10
execute if block ~ ~ ~ #minecraft_but.core:air if block ~ ~-1 ~ #minecraft_but.core:air if block ~ ~-2 ~ #aestd1:cubic run tp @s ~ ~-1 ~
scoreboard players remove $limit minecraft_but.teleport_chorus 1
execute if score $limit minecraft_but.teleport_chorus matches 1.. positioned ~ ~-1 ~ run function minecraft_but.core:modifiers/teleport_chorus/find_air

execute if score $limit minecraft_but.teleport_chorus matches 0 unless score $tries minecraft_but.teleport_chorus matches 10.. run function minecraft_but.core:modifiers/teleport_chorus/look_again