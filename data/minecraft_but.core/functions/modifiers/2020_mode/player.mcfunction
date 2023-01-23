#> minecraft_but.core:modifiers/2020_mode/player
# Teleport players away from player
# @within minecraft_but.core:modifiers/2020_mode/main
# @context player

# Tag self so @a doesn't select @s
tag @s add minecraft_but.2020_mode.self

#> X
# Get difference between player and other player's X positions
execute store result score @s minecraft_but.2020_mode.x run data get entity @s Pos[0] 1
execute as @a[distance=..6,tag=!minecraft_but.2020_mode.self] store result score @s minecraft_but.2020_mode.x run data get entity @s Pos[0] 1
execute at @a[distance=..6,tag=!minecraft_but.2020_mode.self] run scoreboard players operation @s minecraft_but.2020_mode.x -= @p minecraft_but.2020_mode.x
# TP on X
execute if score @s minecraft_but.2020_mode.x matches 1..5 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~-.25 ~ ~ #aestd1:air run tp @p ~-.25 ~ ~
execute if score @s minecraft_but.2020_mode.x matches -5..-1 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~.25 ~ ~ #aestd1:air run tp @p ~.25 ~ ~

#> Y
# Get difference between player and other player's Y positions
execute store result score @s minecraft_but.2020_mode.y run data get entity @s Pos[1] 1
execute as @a[distance=..6,tag=!minecraft_but.2020_mode.self] store result score @s minecraft_but.2020_mode.y run data get entity @s Pos[1] 1
execute at @a[distance=..6,tag=!minecraft_but.2020_mode.self] run scoreboard players operation @s minecraft_but.2020_mode.y -= @p minecraft_but.2020_mode.y
# TP on Y
execute if score @s minecraft_but.2020_mode.y matches 1..5 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~ ~-.25 ~ #aestd1:air run tp @p ~ ~-.25 ~
execute if score @s minecraft_but.2020_mode.y matches -5..-1 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~ ~.25 ~ #aestd1:air run tp @p ~ ~.25 ~

#> Z
# Get difference between player and other player's Z positions
execute store result score @s minecraft_but.2020_mode.z run data get entity @s Pos[2] 1
execute as @a[distance=..6,tag=!minecraft_but.2020_mode.self] store result score @s minecraft_but.2020_mode.z run data get entity @s Pos[2] 1
execute at @a[distance=..6,tag=!minecraft_but.2020_mode.self] run scoreboard players operation @s minecraft_but.2020_mode.z -= @p minecraft_but.2020_mode.z
# TP on Z
execute if score @s minecraft_but.2020_mode.z matches 1..5 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~ ~ ~-.25 #aestd1:air run tp @p ~ ~ ~-.25
execute if score @s minecraft_but.2020_mode.z matches -5..-1 at @a[distance=..6,tag=!minecraft_but.2020_mode.self] if block ~ ~ ~.25 #aestd1:air run tp @p ~ ~ ~.25

# Remove self tag
tag @s remove minecraft_but.2020_mode.self